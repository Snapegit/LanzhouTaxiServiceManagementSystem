
<template>
	<div>
		<div class="app-contain">
			<el-form class="userinfo_form" ref="userinfoFormRef" :model="form" label-width="$template2.back.add.form.base.labelWidth">
				<el-row>
					<el-col :span="12">
						<el-form-item label="客户账号" prop="kehuzhanghao">
							<el-input class="list_inp" v-model="user.kehuzhanghao" readonly placeholder="客户账号" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="客户密码" prop="kehumima">
							<el-input class="list_inp" v-model="user.kehumima" readonly placeholder="客户密码" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="客户姓名" prop="kehuxingming">
							<el-input class="list_inp" v-model="user.kehuxingming"  placeholder="客户姓名" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="性别" prop="xingbie">
							<el-select 
								class="list_sel" 
								v-model="user.xingbie" 
								placeholder="请选择性别"
								>
								<el-option v-for="item in kehuxingbieLists" :label="item" :value="item"></el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="年龄" prop="nianling">
							<el-input class="list_inp" v-model="user.nianling"  placeholder="年龄" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="手机" prop="shouji">
							<el-input class="list_inp" v-model="user.shouji"  placeholder="手机" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="身份证" prop="shenfenzheng">
							<el-input class="list_inp" v-model="user.shenfenzheng"  placeholder="身份证" clearable />
						</el-form-item>
					</el-col>
					<span class="userinfo_form_btn_box">
						<el-button class='userinfo_confirm' type="primary" @click="onSubmit">保存</el-button>
					</span>
				</el-row>
			</el-form>
		</div>
	</div>
</template>

<script setup>
	import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/toolUtil";
	import {
		reactive,
		ref,
		getCurrentInstance
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const tableName = ref('kehu')
	const user = ref({})
	const kehuxingbieLists = ref([])
	const init = () => {
		kehuxingbieLists.value = "男,女".split(',')
	}
	const onSubmit = () => {
		if((!user.value.kehuzhanghao)){
			context?.$toolUtil.message(`客户账号不能为空`,'error')
			return false
		}
		if((!user.value.kehumima)){
			context?.$toolUtil.message(`客户密码不能为空`,'error')
			return false
		}
		if((!user.value.kehuxingming)){
			context?.$toolUtil.message(`客户姓名不能为空`,'error')
			return false
		}
		if((user.value.shouji)&&(!context?.$toolUtil.isMobile(user.value.shouji))){
			context?.$toolUtil.message(`手机应输入手机格式`,'error')
			return false
		}
		if((user.value.shenfenzheng)&&(!context?.$toolUtil.checkIdCard(user.value.shenfenzheng))){
			context?.$toolUtil.message(`身份证应输入身份证格式`,'error')
			return false
		}
		context?.$http({
			url: `${tableName.value}/update`,
			method: 'post',
			data: user.value
		}).then(res => {
			context?.$toolUtil.message('修改成功','success')
		})

	}
	const getInfo = () => {
		context?.$http({
			url: `${tableName.value}/session`,
			method: 'get'
		}).then(res => {
			user.value = res.data.data
			init()
		})
	}
	getInfo()
</script>

<style lang="scss" scoped>
	// 表单
	.userinfo_form {
		border-radius: 6px;
		padding: 30px;
		box-shadow: 0 0px 0px rgba(85, 255, 255, 0.5);
		// form item
		:deep(.el-form-item) {
			border: 1px solid #ddd;
			margin: 0;
			display: flex;
			// 内容盒子
			.el-form-item__content{
				padding: 0 20px;
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
			}
			// 输入框
			.list_inp {
				border: 1px solid #ddd;
				box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
				padding: 0 10px;
				width: 100%;
				line-height: 36px;
				box-sizing: border-box;
				height: 36px;
				//去掉默认样式
				.el-input__wrapper{
					border: none;
					box-shadow: none;
					background: none;
					border-radius: 0;
					height: 100%;
					padding: 0;
				}
				.is-focus {
					box-shadow: none !important;
				}
			}
			//下拉框样式
			.list_sel {
				border: 1px solid #ddd;
				border-radius: 0;
				box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
				padding: 0 10px;
				width: 100%;
				line-height: 36px;
				box-sizing: border-box;
				//去掉默认样式
				.select-trigger{
					height: 100%;
					.el-input{
						height: 100%;
						.el-input__wrapper{
							border: none;
							box-shadow: none;
							background: none;
							border-radius: 0;
							height: 100%;
						}
						.is-focus {
							box-shadow: none !important;
						}
					}
				}
			}

		}
		// 按钮盒子
		.userinfo_form_btn_box {
			padding: 40px 0 0;
			display: flex;
			width: 100%;
			justify-content: center;
			align-items: center;
			// 确定按钮
			.userinfo_confirm {
				border: 0;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 24px;
				margin: 0 10px 0 0;
				outline: none;
				color: #fff;
				background: rgba(241, 49, 100, 1);
				width: auto;
				font-size: 14px;
				height: 32px;
			}
			// 确定按钮-悬浮
			.userinfo_confirm:hover {
				background: rgba(241, 49, 100, .5);
			}
		}
	}
</style>
