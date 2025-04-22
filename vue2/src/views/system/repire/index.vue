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
      <el-form-item label="问题类型" prop="type">
        <el-select v-model="queryParams.type" placeholder="请选择问题类型">
          <el-option label="电路故障" value="电路故障"></el-option>
          <el-option label="管道维修" value="管道维修"></el-option>
          <el-option label="电梯故障" value="电梯故障"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="门牌号" prop="address">
        <el-input
          v-model="queryParams.address"
          placeholder="请输入门牌号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-select
          v-model="queryParams.status"
          placeholder="请选择状态"
          clearable
        >
          <el-option
            v-for="dict in dict.type.repire_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
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
          v-hasPermi="['system:repire:add']"
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
          v-hasPermi="['system:repire:edit']"
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
          v-hasPermi="['system:repire:remove']"
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
      :data="repireList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="问题类型" align="center" prop="type">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.order_type" :value="scope.row.type" />
        </template>
      </el-table-column>
      <el-table-column label="门牌号" align="center" prop="address" />
      <el-table-column label="问题描述" align="center" prop="remark" />
      <el-table-column label="业主" align="center" prop="userName" />
      <el-table-column label="报修时间" align="center" prop="createTime" />
      <el-table-column label="修复人" align="center" prop="repireName" />
      <el-table-column label="状态" align="center" prop="status">
        <template slot-scope="scope">
          <dict-tag
            :options="dict.type.repire_status"
            :value="scope.row.status"
          />
        </template>
      </el-table-column>
      <el-table-column label="修复日志" align="center" prop="repireContent" />
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
      >
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row, true)"
            v-show="scope.row.status == '未修复'"
            >指派人员</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row, false)"
            v-show="
              scope.row.status == '已指派' &&
              scope.row.repireId == $store.state.user.id
            "
            >完成修复</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:repire:remove']"
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

    <!-- 添加或修改报修对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <template v-if="!form.id">
          <el-form-item label="问题类型" prop="type">
            <el-select v-model="form.type" placeholder="请选择问题类型">
              <el-option label="电路故障" value="电路故障"></el-option>
              <el-option label="管道维修" value="管道维修"></el-option>
              <el-option label="电梯故障" value="电梯故障"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="门牌号" prop="address">
            <el-input v-model="form.address" placeholder="请输入门牌号" />
          </el-form-item>
          <el-form-item label="问题描述" prop="remark">
            <el-input
              type="textarea"
              v-model="form.remark"
              placeholder="请输入问题描述"
            />
          </el-form-item>
        </template>
        <el-form-item label="修复人" prop="repireId" v-if="form.id && iszhipai">
         <el-select v-model="form.repireId" placeholder="请输入修复人">
           <el-option v-for="item in userList" :key="item.userId" :label="item.nickName" :value="item.userId"></el-option>
         </el-select>
          <!-- <el-input  /> -->
        </el-form-item>
        <!-- <el-form-item label="业主" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入业主" />
        </el-form-item>
        
        <el-form-item label="状态" prop="status">
          <el-radio-group v-model="form.status">
            <el-radio
              v-for="dict in dict.type.repire_status"
              :key="dict.value"
              :label="dict.value"
            >{{dict.label}}</el-radio>
          </el-radio-group>
        </el-form-item>-->
        <el-form-item label="修复日志" v-if="form.id && !iszhipai">
          <el-input v-model="form.repireContent" placeholder="请输入修复日志" />
          <!-- <editor v-model="form.repireContent" :min-height="192" /> -->
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
  listRepire,
  getRepire,
  delRepire,
  addRepire,
  updateRepire,
} from "@/api/system/repire";
import {
  listUser
} from "@/api/system/user"

export default {
  name: "Repire",
  dicts: ["repire_status", "order_type"],
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
      // 报修表格数据
      repireList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        type: null,
        address: null,
        userId: null,
        repireId: null,
        status: null,
        repireContent: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        type: [
          { required: true, message: "问题类型不能为空", trigger: "change" },
        ],
        address: [
          { required: true, message: "门牌号不能为空", trigger: "blur" },
        ],
        remark: [
          { required: true, message: "问题描述不能为空", trigger: "blur" },
        ],
      },
      iszhipai: false
    };
  },
  created() {
    listUser({
      roleKey: "repire_common",
      pageNum: 1,
      pageSize: 9999
    }).then(res => {
      this.userList = res.rows;
      this.getList();
    })
  },
  methods: {
    /** 查询报修列表 */
    getList() {
      this.loading = true;
      listRepire(this.queryParams).then((response) => {
        this.repireList = response.rows;
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
        address: null,
        remark: null,
        userId: null,
        repireId: null,
        createTime: null,
        status: null,
        repireContent: null,
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
      this.title = "添加报修";
    },
    /** 修改按钮操作 */
    handleUpdate(row, iszhipai) {
      this.reset();
      this.iszhipai = false;
      const id = row.id || this.ids;
      getRepire(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.iszhipai = iszhipai
        this.title = "修改报修";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            if(this.form.repireId && this.form.status == '未修复') {
              this.form.status = '已指派'
            }else if(this.form.status == '已指派') {
              this.form.status = "已修复"
            }

            // if() {
            // }
            updateRepire(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addRepire(this.form).then((response) => {
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
        .confirm('是否确认删除报修编号为"' + ids + '"的数据项？')
        .then(function () {
          return delRepire(ids);
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
        "system/repire/export",
        {
          ...this.queryParams,
        },
        `repire_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
