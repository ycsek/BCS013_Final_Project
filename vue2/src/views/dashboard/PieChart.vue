<template>
  <div :class="className" :style="{height:height,width:width}" />
</template>

<script>
import * as echarts from 'echarts'
require('echarts/theme/macarons') // echarts theme
import resize from './mixins/resize'
import {listOrder} from "@/api/system/order"

export default {
  mixins: [resize],
  props: {
    className: {
      type: String,
      default: 'chart'
    },
    width: {
      type: String,
      default: '100%'
    },
    height: {
      type: String,
      default: '350px'
    }
  },
  data() {
    return {
      chart: null
    }
  },
  mounted() {
    let shui = 0;
    let dian = 0;
    listOrder({
      pageNum: 1,
      pageSize: 9999
    }).then(res => {
      res.rows.forEach(item => {
        if(item.type == '水费') {
          shui += item.price
        }else {
          dian += item.price
        }
      })

      let data = [
        {
          value: shui, 
          name: "水费"
        },
        {
          value: dian,
          name: "电费"
        }
      ]
       this.$nextTick(() => {
      this.initChart(data)
    })
    })
   
  },
  beforeDestroy() {
    if (!this.chart) {
      return
    }
    this.chart.dispose()
    this.chart = null
  },
  methods: {
    initChart(data) {
      this.chart = echarts.init(this.$el, 'macarons')

      this.chart.setOption({
        tooltip: {
          trigger: 'item',
          formatter: '{a} <br/>{b} : {c} 元'
        },
        legend: {
          left: 'center',
          bottom: '10',
          data: ['水费', '电费']
        },
        series: [
          {
            name: '总收款',
            type: 'pie',
            roseType: 'radius',
            radius: [15, 95],
            center: ['50%', '38%'],
            data:data,
            animationEasing: 'cubicInOut',
            animationDuration: 2600
          }
        ]
      })
    }
  }
}
</script>
