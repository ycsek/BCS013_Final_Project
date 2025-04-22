import request from '@/utils/request'

// 查询新闻管理列表
export function listNews(query) {
  return request({
    url: '/system/news/list',
    method: 'get',
    params: query
  })
}

// 查询新闻管理详细
export function getNews(id) {
  return request({
    url: '/system/news/' + id,
    method: 'get'
  })
}

// 新增新闻管理
export function addNews(data) {
  return request({
    url: '/system/news',
    method: 'post',
    data: data
  })
}

// 修改新闻管理
export function updateNews(data) {
  return request({
    url: '/system/news',
    method: 'put',
    data: data
  })
}

// 删除新闻管理
export function delNews(id) {
  return request({
    url: '/system/news/' + id,
    method: 'delete'
  })
}
