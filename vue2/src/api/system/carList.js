import request from '@/utils/request'

// 查询车位管理列表
export function listCarList(query) {
  return request({
    url: '/system/carList/list',
    method: 'get',
    params: query
  })
}

// 查询车位管理详细
export function getCarList(id) {
  return request({
    url: '/system/carList/' + id,
    method: 'get'
  })
}

// 新增车位管理
export function addCarList(data) {
  return request({
    url: '/system/carList',
    method: 'post',
    data: data
  })
}

// 修改车位管理
export function updateCarList(data) {
  return request({
    url: '/system/carList',
    method: 'put',
    data: data
  })
}

// 删除车位管理
export function delCarList(id) {
  return request({
    url: '/system/carList/' + id,
    method: 'delete'
  })
}
