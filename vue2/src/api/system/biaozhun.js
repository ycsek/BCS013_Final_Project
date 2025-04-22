import request from '@/utils/request'

// 查询收费标准列表
export function listBiaozhun(query) {
  return request({
    url: '/system/biaozhun/list',
    method: 'get',
    params: query
  })
}

// 查询收费标准详细
export function getBiaozhun(id) {
  return request({
    url: '/system/biaozhun/' + id,
    method: 'get'
  })
}

// 新增收费标准
export function addBiaozhun(data) {
  return request({
    url: '/system/biaozhun',
    method: 'post',
    data: data
  })
}

// 修改收费标准
export function updateBiaozhun(data) {
  return request({
    url: '/system/biaozhun',
    method: 'put',
    data: data
  })
}

// 删除收费标准
export function delBiaozhun(id) {
  return request({
    url: '/system/biaozhun/' + id,
    method: 'delete'
  })
}
