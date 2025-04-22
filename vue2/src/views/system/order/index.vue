<template>
  <div class="app-container">
    <el-form
      :model="queryParams"
      ref="queryForm"
      size="small"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="类型" prop="type">
        <el-select
          v-model="queryParams.type"
          placeholder="请选择类型"
          clearable
        >
          <el-option
            v-for="dict in dict.type.order_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="户号" prop="huhao">
        <el-input
          v-model="queryParams.huhao"
          placeholder="请输入户号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="单元号" prop="number">
        <el-input
          v-model="queryParams.number"
          placeholder="请输入单元号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="充值金额" prop="price">
        <el-input
          v-model="queryParams.price"
          placeholder="请输入充值金额"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button
          type="primary"
          icon="el-icon-search"
          size="mini"
          @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery"
          >重置</el-button
        >
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:order:add']"
          >新增</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:order:edit']"
          >修改</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:order:remove']"
          >删除</el-button
        >
      </el-col>
      <right-toolbar
        :showSearch.sync="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <el-table
      v-loading="loading"
      :data="orderList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="类型" align="center" prop="type">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.order_type" :value="scope.row.type" />
        </template>
      </el-table-column>
      <el-table-column label="户号" align="center" prop="huhao" />
      <el-table-column label="单元号" align="center" prop="number" />
      <el-table-column label="充值金额" align="center" prop="price" />
      <!-- <el-table-column label="状态" align="center" prop="status" /> -->
      <el-table-column label="业主" align="center" prop="userName" />
      <el-table-column label="充值时间" align="center" prop="createTime" />
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
      >
        <template slot-scope="scope">
          <!-- <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:order:edit']"
            >修改</el-button
          > -->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:order:remove']"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total > 0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改水电费缴纳对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-alert
        :title="alertTitle"
        type="success"
        :closable="false"
      ></el-alert>
      <el-form style="margin-top: 20px" ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="类型" prop="type">
          <el-select v-model="form.type" placeholder="请选择类型">
            <el-option
              v-for="dict in dict.type.order_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="户号" prop="huhao">
          <el-input v-model="form.huhao" placeholder="请输入户号" />
        </el-form-item>
        <el-form-item label="单元号" prop="number">
          <el-input v-model="form.number" placeholder="请输入单元号" />
        </el-form-item>
        <el-form-item label="充值金额" prop="price">
          <el-input-number v-model="form.price" placeholder="请输入充值金额" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  listOrder,
  getOrder,
  delOrder,
  addOrder,
  updateOrder,
} from "@/api/system/order";
import {
  listBiaozhun,
  getBiaozhun,
  delBiaozhun,
  addBiaozhun,
  updateBiaozhun,
} from "@/api/system/biaozhun";

export default {
  name: "Order",
  dicts: ["order_type"],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 水电费缴纳表格数据
      orderList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        type: null,
        huhao: null,
        number: null,
        price: null,
        status: null,
        userId: null,
        unit: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        type: [{ required: true, message: "类型不能为空", trigger: "change" }],
        huhao: [{ required: true, message: "户号不能为空", trigger: "blur" }],
        number: [{ required: true, message: "单元号不能为空", trigger: "blur" }],
        price: [
          { required: true, message: "充值金额不能为空", trigger: "blur" },
        ],
      },
      alertTitle: "",
    };
  },
  created() {
    listBiaozhun().then(res => {
      let title = ""
      res.rows.forEach(item => {
        title += `收费标准：${item.typeName}：${item.price}元${item.typeName == '水费' ? '吨' : 'kwh'}`
      })
      this.alertTitle = title
    })
    this.getList();
  },
  methods: {
    /** 查询水电费缴纳列表 */
    getList() {
      this.loading = true;
      listOrder(this.queryParams).then((response) => {
        this.orderList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        type: null,
        huhao: null,
        number: null,
        price: null,
        status: null,
        userId: null,
        createTime: null,
        unit: null,
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map((item) => item.id);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加水电费缴纳";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      getOrder(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改水电费缴纳";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            updateOrder(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addOrder(this.form).then((response) => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal
        .confirm('是否确认删除水电费缴纳编号为"' + ids + '"的数据项？')
        .then(function () {
          return delOrder(ids);
        })
        .then(() => {
          this.getList();
          this.$modal.msgSuccess("删除成功");
        })
        .catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download(
        "system/order/export",
        {
          ...this.queryParams,
        },
        `order_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
