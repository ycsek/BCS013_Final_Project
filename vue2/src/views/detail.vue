<template>
  <div class="news-detail-container">
    <!-- 标题区 -->
    <div class="news-header">
      <h1 class="title">{{ detailData.title }}</h1>
      <div class="meta-info">
        <span class="author">{{ detailData.userName }}</span>
        <span class="time">{{ detailData.createTime }}</span>
      </div>
    </div>

    <!-- 封面图 -->
    <el-image 
      :src="baseUrl + detailData.pic" 
      fit="cover" 
      class="cover-image"
      >
    </el-image>

    <!-- 富文本内容 -->
    <div class="content-wrapper">
      <div 
        class="ql-editor" 
        v-html="detailData.content">
      </div>
    </div>
  </div>
</template>

<script>
import {getNews} from "@/api/system/news"
export default {
  data() {
    return {
        baseUrl: process.env.VUE_APP_BASE_API,
      detailData: {
        title: '2025年小区绿化改造方案公示',
        author: '物业管理处',
        publishTime: '2025-03-30 14:30',
        cover: 'https://dummyimage.com/1200x600/409EFF/fff',
        content: `
          <h2>改造方案要点</h2>
          <p>1. 新增樱花大道景观区，预计种植晚樱200株</p>
          <p>2. 儿童活动区升级橡胶地垫，面积扩大至800㎡</p>
          <img src="https://dummyimage.com/600x400/67C23A/fff" alt="效果图">
          <p>3. 中心广场增设智能灌溉系统（示意图如下）</p>
        `
      }
    }
  },
  created(){
      getNews(this.$route.query.id).then(res => {
          this.detailData = res.data;
      })
  },
}
</script>

<style scoped lang="scss">
.news-detail-container {
  max-width: 1200px;
  margin: 20px auto;
  padding: 30px;
  background: #fff;
  box-shadow: 0 2px 12px 0 rgba(0,0,0,.1);
}

.news-header {
  margin-bottom: 30px;
  border-bottom: 1px solid #eee;
  padding-bottom: 20px;
}

.title {
  font-size: 28px;
  color: #333;
  margin-bottom: 15px;
}

.meta-info {
  color: #999;
  font-size: 14px;
  
  .author {
    margin-right: 20px;
  }
}

.cover-image {
  width: 100%;
  height: 400px;
  border-radius: 4px;
  margin-bottom: 30px;
}

.content-wrapper {
  line-height: 1.8;
  font-size: 16px;
  
  ::v-deep .ql-editor {
    padding: 0;
    
    h2 {
      color: #409EFF;
      margin: 25px 0;
    }
    
    img {
      max-width: 100%;
      margin: 20px 0;
      border-radius: 4px;
    }
  }
}
</style>
