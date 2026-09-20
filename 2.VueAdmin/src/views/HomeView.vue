<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('kehu','首页总数')">
				<el-card v-show="countTypeList.closekehuCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								客户
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenkehuCountType')" class="showIcons"
									:class="countTypeList.hiddenkehuCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closekehuCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenkehuCountType">
							<div class="count_title">客户总数</div>
							<div class="count_num">{{kehuCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('cheliangxinxi','首页总数')">
				<el-card v-show="countTypeList.closecheliangxinxiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								车辆信息
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddencheliangxinxiCountType')" class="showIcons"
									:class="countTypeList.hiddencheliangxinxiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closecheliangxinxiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddencheliangxinxiCountType">
							<div class="count_title">车辆信息总数</div>
							<div class="count_num">{{cheliangxinxiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('qichechuzu','首页总数')">
				<el-card v-show="countTypeList.closeqichechuzuCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								汽车出租
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenqichechuzuCountType')" class="showIcons"
									:class="countTypeList.hiddenqichechuzuCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closeqichechuzuCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenqichechuzuCountType">
							<div class="count_title">汽车出租总数</div>
							<div class="count_num">{{qichechuzuCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('kehu','首页统计')">
				<el-card v-show="cardTypeList.closekehuChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								客户
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenkehuChartType1')" class="showIcons"
									:class="cardTypeList.hiddenkehuChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closekehuChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenkehuChartType1">
							<div id="kehuxingbieEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('cheliangxinxi','首页统计')">
				<el-card v-show="cardTypeList.closecheliangxinxiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								车辆信息
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddencheliangxinxiChartType1')" class="showIcons"
									:class="cardTypeList.hiddencheliangxinxiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closecheliangxinxiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddencheliangxinxiChartType1">
							<div id="cheliangxinxicheliangleixingEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('qichechuzu','首页统计')">
				<el-card v-show="cardTypeList.closeqichechuzuChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								汽车出租
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenqichechuzuChartType1')" class="showIcons"
									:class="cardTypeList.hiddenqichechuzuChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closeqichechuzuChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenqichechuzuChartType1">
							<div id="qichechuzujiageEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closekehuCountType = true
		countTypeList.value.hiddenkehuCountType = true
		if(btnAuth('kehu','首页总数')){
			getkehuCount()
		}
		countTypeList.value.closecheliangxinxiCountType = true
		countTypeList.value.hiddencheliangxinxiCountType = true
		if(btnAuth('cheliangxinxi','首页总数')){
			getcheliangxinxiCount()
		}
		countTypeList.value.closeqichechuzuCountType = true
		countTypeList.value.hiddenqichechuzuCountType = true
		if(btnAuth('qichechuzu','首页总数')){
			getqichechuzuCount()
		}
	}
	const kehuCount = ref(0)
	const getkehuCount = () => {
		context?.$http({
			url:'kehu/count',
			method: 'get'
		}).then(res=>{
			kehuCount.value = res.data.data
		})
	}
	const cheliangxinxiCount = ref(0)
	const getcheliangxinxiCount = () => {
		context?.$http({
			url:'cheliangxinxi/count',
			method: 'get'
		}).then(res=>{
			cheliangxinxiCount.value = res.data.data
		})
	}
	const qichechuzuCount = ref(0)
	const getqichechuzuCount = () => {
		context?.$http({
			url:'qichechuzu/count',
			method: 'get'
		}).then(res=>{
			qichechuzuCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closekehuChartType1: true,
		hiddenkehuChartType1: true,
		closecheliangxinxiChartType1: true,
		hiddencheliangxinxiChartType1: true,
		closeqichechuzuChartType1: true,
		hiddenqichechuzuChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('kehu','首页统计')){
			getkehuChart1()
		}
		if(btnAuth('cheliangxinxi','首页统计')){
			getcheliangxinxiChart1()
		}
		if(btnAuth('qichechuzu','首页统计')){
			getqichechuzuChart1()
		}
	}
	const getkehuChart1 = () => {
		nextTick(()=>{
			var xingbieEchart1 = echarts.init(document.getElementById("kehuxingbieEchart1"),'macarons');
			context?.$http({
				url: "kehu/group/xingbie",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].xingbie);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].xingbie
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '客户男女统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				xingbieEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				xingbieEchart1.setOption(option);
				//根据窗口的大小变动图表
				xingbieEchart1.resize();
			})
		})
	}
	const getcheliangxinxiChart1 = () => {
		nextTick(()=>{
			var cheliangleixingEchart1 = echarts.init(document.getElementById("cheliangxinxicheliangleixingEchart1"),'macarons');
			context?.$http({
				url: "cheliangxinxi/group/cheliangleixing",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].cheliangleixing);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].cheliangleixing
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '车辆类型统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				cheliangleixingEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				cheliangleixingEchart1.setOption(option);
				//根据窗口的大小变动图表
				cheliangleixingEchart1.resize();
			})
		})
	}
	const getqichechuzuChart1 = () => {
		nextTick(()=>{
			var jiageEchart1 = echarts.init(document.getElementById("qichechuzujiageEchart1"),'macarons');
			context?.$http({
				url: `qichechuzu/value/cheliangmingcheng/jiage`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].cheliangmingcheng);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].cheliangmingcheng
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '销售额统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				jiageEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				jiageEchart1.setOption(option);
				//根据窗口的大小变动图表
				jiageEchart1.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 0 0 20px;
		font-weight: bold;
		display: flex;
		width: 100%;
		font-size: 30px;
		justify-content: center;
		align-items: center;
		height: 50%;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 1px solid #e4e7ed;
			box-shadow: 0px 0px 12px rgba(0,0,0,.12);
			padding: 0 0 50px;
			margin: 0 10px 10px;
			flex: 1;
			background: rgba(0,123,213,1);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border: 1px solid #e4e7ed;
				padding: 10px;
				left: 0;
				bottom: 0;
				width: 100%;
				border-width: 1px 0 0;
				position: absolute;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #fff;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #fff;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px;
					display: flex;
					align-items: center;
					text-align: center;
					// 总数标题
					.count_title{
						padding: 0 10px 0 0;
						color: #fff;
						font-weight: bold;
						font-size: 20px;
						line-height: 3;
					}
					// 总数数字
					.count_num{
						color: #fff;
						font-weight: bold;
						font-size: 24px;
						line-height: 3;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 30px 0;
		background: url(http://clfile.zggen.cn/20240203/b89de8d5b5894c14925e21e6f1cbfff7.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 0px solid #e4e7ed;
			box-shadow: none;
			margin: 0 10px 20px;
			background: #fff;
			width: 32%;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border: 1px solid #e4e7ed;
				display: none;
				width: 100%;
				border-width: 0 0 1px;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #f00;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #aaa;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				width: 100%;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
