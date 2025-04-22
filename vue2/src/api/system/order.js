import request from '@/utils/request'

// 查询水电费缴纳列表
export function listOrder(query) {
  return request({
    url: '/system/order/list',
    method: 'get',
    params: query
  })
}

export function getLine(query) {
  return request({
    url: '/system/order/getLine',
    method: 'get',
    params: query
  })
}

// 查询水电费缴纳详细
export function getOrder(id) {
  return request({
    url: '/system/order/' + id,
    method: 'get'
  })
}

// 新增水电费缴纳
export function addOrder(data) {
  return request({
    url: '/system/order',
    method: 'post',
    data: data
  })
}

// 修改水电费缴纳
export function updateOrder(data) {
  return request({
    url: '/system/order',
    method: 'put',
    data: data
  })
}

// 删除水电费缴纳
export function delOrder(id) {
  return request({
    url: '/system/order/' + id,
    method: 'delete'
  })
}
