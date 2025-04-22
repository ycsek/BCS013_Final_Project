import request from '@/utils/request'

// 查询报修列表
export function listRepire(query) {
  return request({
    url: '/system/repire/list',
    method: 'get',
    params: query
  })
}

export function getChart(query) {
  return request({
    url: '/system/repire/getChart',
    method: 'get',
    params: query
  })
}

// 查询报修详细
export function getRepire(id) {
  return request({
    url: '/system/repire/' + id,
    method: 'get'
  })
}

// 新增报修
export function addRepire(data) {
  return request({
    url: '/system/repire',
    method: 'post',
    data: data
  })
}

// 修改报修
export function updateRepire(data) {
  return request({
    url: '/system/repire',
    method: 'put',
    data: data
  })
}

// 删除报修
export function delRepire(id) {
  return request({
    url: '/system/repire/' + id,
    method: 'delete'
  })
}
