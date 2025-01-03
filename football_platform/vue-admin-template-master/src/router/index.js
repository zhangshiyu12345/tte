import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/layout'

/**
 * Note: sub-menu only appear when route children.length >= 1
 * Detail see: https://panjiachen.github.io/vue-element-admin-site/guide/essentials/router-and-nav.html
 *
 * hidden: true                   if set true, item will not show in the sidebar(default is false)
 * alwaysShow: true               if set true, will always show the root menu
 *                                if not set alwaysShow, when item has more than one children route,
 *                                it will becomes nested mode, otherwise not show the root menu
 * redirect: noRedirect           if set noRedirect will no redirect in the breadcrumb
 * name:'router-name'             the name is used by <keep-alive> (must set!!!)
 * meta : {
    roles: ['admin','editor']    control the page roles (you can set multiple roles)
    title: 'title'               the name show in sidebar and breadcrumb (recommend set)
    icon: 'svg-name'/'el-icon-x' the icon show in the sidebar
    breadcrumb: false            if set false, the item will hidden in breadcrumb(default is true)
    activeMenu: '/example/list'  if set path, the sidebar will highlight the path you set
  }
 */

/**
 * constantRoutes
 * a base page that does not have permission requirements
 * all roles can be accessed
 */
export const constantRoutes = [
  {
    path: '/login',
    component: () => import('@/views/login/index'),
    hidden: true
  },

  {
    path: '/404',
    component: () => import('@/views/404'),
    hidden: true
  },

  {
    path: '/',
    component: Layout,
    redirect: '/dashboard',
    children: [{
      path: 'dashboard',
      name: 'Dashboard',
      component: () => import('@/views/dashboard/index'),
      meta: { title: '首页', icon: 'dashboard' }
    },
  ]
  },
  {
    path: '/footballer',
    component: Layout,
    redirect: '/footballer/player',
    name: 'Footballer',
    meta: { title: '球员管理', icon: 'el-icon-s-help' },
    children: [
      {
        path: 'depot',
        name: 'Depot',
        component: () => import('@/views/depot/index'),
        meta: { title: '球员身体素质分析', icon: 'el-icon-s-custom' }
      },

      {
        path: 'player',
        name: 'Player',
        component: () => import('@/views/player/index'),
        meta: { title: '数据对比', icon: 'tree' }
      },
    ]
  },

  {
    path: '/tream',
    component: Layout,
    redirect: '/tream/match',
    name: 'Tream',
    meta: { title: '球队管理', icon: 'el-icon-s-order' },
    children: [
      {
        path: 'match',
        name: 'Match',
        component: () => import('@/views/match/index'),
        meta: { title: '数据分析', icon: 'el-icon-s-data' }
      },
      {
        path: '/process/:id',
        name: 'Process',
        component: () => import('@/views/process/index'),
      },
      {
        path: '/player_tra/:id',
        name: 'Player_tra',
        component: () => import('@/views/player_tra/index'),
      }
    ]
  }, 

  {
    path: '/form',
    component: Layout,
    children: [
      {
        path: 'index',
        name: 'Form',
        component: () => import('@/views/form/index'),
        meta: { title: '设置', icon: 'el-icon-setting' }
      }
    ]
  },

  // {
  //   path: '/nested',
  //   component: Layout,
  //   children: [
  //     {
  //       path: 'index',
  //       name: 'Nested',
  //       component: () => import('@/views/nested/index'),
  //       meta: { title: '通知', icon: 'nested' }
  //     }
  //   ]
    
  // },

  // 404 page must be placed at the end !!!
  { path: '*', redirect: '/404', hidden: true }
]

const createRouter = () => new Router({
  // mode: 'history', // require service support
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})

const router = createRouter()

// Detail see: https://github.com/vuejs/vue-router/issues/1234#issuecomment-357941465
export function resetRouter() {
  const newRouter = createRouter()
  router.matcher = newRouter.matcher // reset router
}

export default router
