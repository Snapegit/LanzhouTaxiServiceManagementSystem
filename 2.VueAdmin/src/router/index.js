	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import qicheruku from '@/views/qicheruku/list'
	import kehu from '@/views/kehu/list'
	import qichechuzu from '@/views/qichechuzu/list'
	import cheliangxinxi from '@/views/cheliangxinxi/list'
	import kehuRegister from '@/views/kehu/register'
	import kehuCenter from '@/views/kehu/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/kehuCenter',
			name: '客户个人中心',
			component: kehuCenter
		}
		,{
			path: '/qicheruku',
			name: '汽车入库',
			component: qicheruku
		}
		,{
			path: '/kehu',
			name: '客户',
			component: kehu
		}
		,{
			path: '/qichechuzu',
			name: '汽车出租',
			component: qichechuzu
		}
		,{
			path: '/cheliangxinxi',
			name: '车辆信息',
			component: cheliangxinxi
		}
		]
	},
	{
		path: '/kehuRegister',
		name: '客户注册',
		component: kehuRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
