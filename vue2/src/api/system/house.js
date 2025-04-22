import request from '@/utils/request'

// 查询租房发布列表
export function listHouse(query) {
  return request({
    url: '/system/house/list',
    method: 'get',
    params: query
  })
}

// 查询租房发布详细
export function getHouse(id) {
  return request({
    url: '/system/house/' + id,
    method: 'get'
  })
}

// 新增租房发布
export function addHouse(data) {
  return request({
    url: '/system/house',
    method: 'post',
    data: data
  })
}

// 修改租房发布
export function updateHouse(data) {
  return request({
    url: '/system/house',
    method: 'put',
    data: data
  })
}

// 删除租房发布
export function delHouse(id) {
  return request({
    url: '/system/house/' + id,
    method: 'delete'
  })
}
