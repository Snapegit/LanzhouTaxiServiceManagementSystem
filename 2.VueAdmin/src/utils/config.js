const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
            // 退出到首页链接
            indexUrl: ''
        }
    },
    getProjectName(){
        return {
            projectName: "兰州市出租车服务管理系统"
        } 
    }
}
export default config
