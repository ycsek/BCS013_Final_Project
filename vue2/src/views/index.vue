<template>
  <div class="home-container">
    <!-- 快捷功能入口 -->
    <el-row :gutter="20" class="quick-actions">
      <el-col :span="6" v-for="(action, index) in actions" :key="index">
        <el-button
          :type="action.type"
          :icon="action.icon"
          @click="handleAction(action)"
          class="action-btn"
        >
          {{ action.label }}
        </el-button>
      </el-col>
    </el-row>

    <!-- 顶部新闻模块 -->
    <el-row :gutter="20" class="news-section">
      <el-col :span="8" v-for="(item, index) in newsList" :key="index"  @click.native.stop="showNewsDetail(item)">
        <el-card shadow="hover" :body-style="{ padding: '0px' }"  >
          <el-image
            :src="baseUrl + item.pic"
            fit="cover"
            class="news-image"
          ></el-image>
          <div class="news-info">
            <h4 >{{ item.title }}</h4>
            <span class="news-date">{{
              parseTime(item.createTime, "{y}/{m}/{d}")
            }}</span>
          </div>
        </el-card>
      </el-col>
    </el-row>
    <pagination
      v-show="total > 0"
      :total="total"
      :pageSizes="[3]"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getNewsList"
    />

    <!-- 数据展示区 -->
    <el-row :gutter="20" class="data-section" style="margin-top: 50px">
      <!-- 停车位信息 -->
      <el-col :span="12">
        <el-card>
          <div slot="header" class="section-title">
            <i class="el-icon-s-marketing"></i>
            停车位状态（总数：{{ parkingData.total }}）
          </div>
          <el-table :data="parkingData.list">
            <el-table-column label="车位编号" align="center" prop="carNo" />
            <el-table-column label="状态" align="center" prop="status">
              <template slot-scope="scope">
                <dict-tag
                  :options="dict.type.car_status"
                  :value="scope.row.status"
                />
              </template>
            </el-table-column>
            <el-table-column label="管理费" align="center" prop="price">
              <template slot-scope="scope">
                {{ scope.row.price }} 元/月
              </template>
            </el-table-column>
            <el-table-column label="发布人" align="center" prop="userName" />
            <el-table-column
              label="发布时间"
              align="center"
              prop="createTime"
            />
          </el-table>
          <pagination
            v-show="parkingData.total > 0"
            :total="parkingData.total"
            :pageSizes="[5]"
            :page.sync="parkingData.queryParams.pageNum"
            :limit.sync="parkingData.queryParams.pageSize"
            @pagination="getCarList"
          />
        </el-card>
      </el-col>

      <!-- 租房信息 -->
      <el-col :span="12">
        <el-card>
          <div slot="header" class="section-title">
            <i class="el-icon-house"></i>
            可租房源
          </div>
          <el-table :data="houseData.list">
            <el-table-column label="照片" align="center" prop="pic" width="100">
              <template slot-scope="scope">
                <image-preview :src="scope.row.pic" :width="50" :height="50" />
              </template>
            </el-table-column>
            <el-table-column label="楼号/户型" align="center" prop="huxing" />
            <el-table-column label="价格" align="center" prop="price">
              <template slot-scope="scope">
                {{ scope.row.price }} 元/月
              </template>
            </el-table-column>
            <el-table-column
              label="特色"
              align="center"
              prop="characteristic"
            />
            <el-table-column label="状态" align="center" prop="status">
              <template slot-scope="scope">
                <dict-tag
                  :options="dict.type.house_status"
                  :value="scope.row.status"
                />
              </template>
            </el-table-column>
            <el-table-column label="发布人" align="center" prop="userName" />
            <el-table-column
              label="发布时间"
              align="center"
              prop="createTime"
            />
          </el-table>
          <pagination
            v-show="houseData.total > 0"
            :total="houseData.total"
            :pageSizes="[5]"
            :page.sync="houseData.queryParams.pageNum"
            :limit.sync="houseData.queryParams.pageSize"
            @pagination="geHouseList"
          />
        </el-card>
      </el-col>
    </el-row>

    <!-- 添加或修改水电费缴纳对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-alert :title="alertTitle" type="success" :closable="false"></el-alert>
      <el-form
        style="margin-top: 20px"
        ref="form"
        :model="form"
        :rules="rules"
        label-width="80px"
      >
        <el-form-item label="类型" prop="type">
          <el-select disabled v-model="form.type" placeholder="请选择类型">
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

    <!-- 维修上报弹窗 -->
    <el-dialog
      title="维修申报"
      :visible.sync="repairDialogVisible"
      width="600px"
    >
      <el-form :model="repairForm" label-width="100px">
        <el-form-item label="问题类型">
          <el-select v-model="repairForm.type" placeholder="请选择">
            <el-option label="电路故障" value="1"></el-option>
            <el-option label="管道维修" value="2"></el-option>
            <el-option label="电梯故障" value="3"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="门牌号">
          <el-input
            v-model="repairForm.address"
            placeholder="格式：X栋X单元XXX室"
          ></el-input>
        </el-form-item>
        <el-form-item label="问题描述">
          <el-input
            type="textarea"
            :rows="4"
            placeholder="请详细描述问题现象"
            v-model="repairForm.remark"
          ></el-input>
        </el-form-item>
        <el-button type="primary" @click="submitRepair">立即提交</el-button>
      </el-form>
    </el-dialog>
  </div>
</template>

<script>
import { listNews } from "@/api/system/news";
import {
  listCarList,
  getCarList,
  delCarList,
  addCarList,
  updateCarList,
} from "@/api/system/carList";
import {
  listHouse,
  getHouse,
  delHouse,
  addHouse,
  updateHouse,
} from "@/api/system/house";

import {
  listRepire,
  getRepire,
  delRepire,
  addRepire,
  updateRepire,
} from "@/api/system/repire";
import {
  listBiaozhun,
  getBiaozhun,
  delBiaozhun,
  addBiaozhun,
  updateBiaozhun,
} from "@/api/system/biaozhun";
import {
  listOrder,
  getOrder,
  delOrder,
  addOrder,
  updateOrder,
} from "@/api/system/order";

export default {
  dicts: ["car_status", "house_status"],
  data() {
    return {
      baseUrl: process.env.VUE_APP_BASE_API,
      newsList: [],
      parkingData: {
        queryParams: {
          pageNum: 1,
          pageSize: 5,
          carNo: null,
          status: null,
          price: null,
        },
        total: 0,
        list: [],
      },
      houseData: {
        queryParams: {
          pageNum: 1,
          pageSize: 5,
          carNo: null,
          status: null,
          price: null,
        },
        total: 0,
        list: [],
      },
      rentList: [
        { type: "三室一厅", price: 4500, tags: ["民水民电", "免中介费"] },
        { type: "单身公寓", price: 2800, tags: ["独立卫浴"] },
      ],
      actions: [
        { label: "水费缴纳", icon: "el-icon-water-cup", type: "primary" },
        { label: "电费缴纳", icon: "el-icon-lightning", type: "success" },
        { label: "维修上报", icon: "el-icon-warning", type: "danger" },
      ],
      repairDialogVisible: false,
      repairForm: {
        type: "",
        address: "",
        remark: "",
      },
      form: {},
      open: false,
      title: "",
      // 表单校验
      rules: {
        type: [{ required: true, message: "类型不能为空", trigger: "change" }],
        huhao: [{ required: true, message: "户号不能为空", trigger: "blur" }],
        number: [
          { required: true, message: "单元号不能为空", trigger: "blur" },
        ],
        price: [
          { required: true, message: "充值金额不能为空", trigger: "blur" },
        ],
      },
      alertTitle: "",
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 3,
        title: null,
        pic: null,
        content: null,
      },
      total: 0,
    };
  },
  created() {
    listBiaozhun().then((res) => {
      let title = "";
      res.rows.forEach((item) => {
        title += `收费标准：${item.typeName}：${item.price}元${
          item.typeName == "水费" ? "吨" : "kwh"
        }`;
      });
      this.alertTitle = title;
    });
    this.getNewsList();
    this.getCarList();
    this.geHouseList();
  },
  methods: {
    showNewsDetail(item){
      this.$router.push("/detail?id=" + item.id)
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
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    geHouseList() {
      listHouse(this.houseData.queryParams).then((response) => {
        this.houseData.list = response.rows;
        this.houseData.total = response.total;
      });
    },
    getNewsList() {
      listNews(this.queryParams).then((response) => {
        this.newsList = response.rows;
        this.total = response.total;
      });
    },
    getCarList() {
      listCarList(this.parkingData.queryParams).then((response) => {
        this.parkingData.list = response.rows;
        this.parkingData.total = response.total;
      });
    },
    handleAction(action) {
      if (action.label === "维修上报") {
        this.repairDialogVisible = true;
      } else {
        if (action.label == "水费缴纳") {
          this.reset();
          this.open = true;
          this.form.type = "水费";
          this.title = "水费缴纳";
        } else {
          this.reset();
          this.open = true;
          this.form.type = "电费";
          this.title = "电费缴纳";
        }
        // this.$message.success(`跳转至${action.label}页面...`);
      }
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
    submitRepair() {
      this.$confirm("确认提交维修申请吗？", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
      }).then(() => {
        addRepire(this.repairForm).then((res) => {
          this.$message.success("提交成功，维修人员将在24小时内完成修复");
          this.repairDialogVisible = false;
        });
      });
    },
  },
};
</script>

<style scoped>
.home-container {
  padding: 20px;
  max-width: 1400px;
  margin: 0 auto;
}

.news-section {
  margin-bottom: 30px;
}

.news-image {
  height: 200px;
  width: 100%;
}

.news-info {
  padding: 15px;
}

.section-title {
  font-size: 18px;
  color: #333;
}

.quick-actions {
  margin: 30px 0;
}

.action-btn {
  width: 100%;
  height: 60px;
  font-size: 16px;
  margin-bottom: 15px;
}

.el-tag {
  margin-right: 5px;
}
</style>
