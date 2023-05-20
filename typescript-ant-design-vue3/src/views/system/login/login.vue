<!--
  * 登录
  *
  * @Author:    1024创新实验室-主任：卓大
  * @Date:      2022-09-12 22:34:00
  * @Wechat:    zhuda1024
  * @Email:     lab1024@163.com
  * @Copyright  1024创新实验室 （ https://1024lab.net ），Since 2012
  *
-->
<template>
    <div class="login-container">
        <div class="box-item desc">
            <div class="welcome">
                <p>欢迎登录 V System Skeleton</p>
                <p class="desc">
                    v-system-skeleton 是使用Very(V语言) 和 Vue3.2 Setup标签、 TypeScript开发出的一套简洁、易用的中后台解决方案！
                    <br />
                    <br />
                    <span class="setence">
                        特殊说明：
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;由于比较喜欢V语言, 所以快速实现一套V语言可用的web系统框架, 不建议生产使用(由于语言处于非稳定状态以及一些错误问题未处理).
                        后端采用开发的<a target="_blank" href="https://github.com/xiusin/very">Very</a>类GoGin框架.
                        <br />
                        系统前端采用smart-admin-web: <a target="_blank"
                            href="https://gitee.com/lab1024/smart-admin/tree/master/smart-admin-web/typescript-ant-design-vue3">SmartAdminUI
                            &
                            Ts</a><br />
                        接口模型采用smart-admin-api: <a target="_blank"
                            href="https://gitee.com/lab1024/smart-admin/tree/master/smart-admin-api">smart-admin-api</a><br />
                        <span class="author">
                            <a target="_blank" href="https://github.com/xiusin/v-system-skeleton"
                                style="color: white;  font-size: 13px; text-decoration: underline">
                                扣丁巴格 & xiusin
                            </a>
                        </span>
                    </span>
                </p>
            </div>
            <div class="app-qr-box">
                <div class="app-qr">
                    <img :src="zhuoda" />
                    <span class="qr-desc"> 加微信，骚扰卓大 :) </span>
                </div>
                <div class="app-qr">
                    <img :src="xiaozhen" />
                    <span class="qr-desc"> 关注：小镇程序员 </span>
                </div>
            </div>
        </div>
        <div class="box-item login">
            <img class="login-qr" :src="loginQR" />
            <div class="login-title">账号登录</div>
            <a-form ref="formRef" class="login-form" :model="loginForm" :rules="rules">
                <a-form-item name="username">
                    <a-input v-model:value.trim="loginForm.username" placeholder="请输入用户名" />
                </a-form-item>
                <a-form-item name="password">
                    <a-input-password v-model:value="loginForm.password" autocomplete="on"
                        :type="showPassword ? 'text' : 'password'" placeholder="请输入密码" />
                </a-form-item>
                <a-form-item>
                    <a-checkbox v-model:checked="rememberPwd">记住密码</a-checkbox>
                </a-form-item>
                <a-form-item>
                    <div class="btn" @click="onLogin">登录</div>
                </a-form-item>
            </a-form>
            <div class="more">
                <div class="title-box">
                    <p class="line"></p>
                    <p class="title">其他方式登录</p>
                    <p class="line"></p>
                </div>
                <div class="login-type">
                    <img :src="aliLogin" />
                    <img :src="qqLogin" />
                    <img :src="googleLogin" />
                    <img :src="weiboLogin" />
                </div>
            </div>
        </div>
    </div>
</template>
<script setup lang="ts">
import { message } from 'ant-design-vue';
import { onMounted, onUnmounted, reactive, ref } from 'vue';
import { useRouter } from 'vue-router';
import { loginApi } from '/@/api/system/login/login-api';
import { SmartLoading } from '/@/components/framework/smart-loading';
import { LOGIN_DEVICE_ENUM } from '/@/constants/system/login-device-const';
import { useUserStore } from '/@/store/modules/system/user';
import { saveTokenToCookie } from '/@/utils/cookie-util';

import gongzhonghao from '/@/assets/images/1024lab/1024lab-gzh.jpg';
import zhuoda from '/@/assets/images/1024lab/zhuoda-wechat.jpg';
import loginQR from '/@/assets/images/login/login-qr.png';
import xiaozhen from '/@/assets/images/1024lab/xiaozhen-gzh.jpg';

import aliLogin from '/@/assets/images/login/ali-icon.png';
import googleLogin from '/@/assets/images/login/google-icon.png';
import qqLogin from '/@/assets/images/login/qq-icon.png';
import weiboLogin from '/@/assets/images/login/weibo-icon.png';

import { buildRoutes } from '/@/router/index';
import { smartSentry } from '/@/lib/smart-sentry';

//--------------------- 登录表单 ---------------------------------

const loginForm = reactive({
    username: '',
    password: '',
    captchaCode: '',
    captchaUuid: '',
    loginDevice: LOGIN_DEVICE_ENUM.PC.value,
});
const rules = {
    username: [{ required: true, message: '用户名不能为空' }],
    password: [{ required: true, message: '密码不能为空' }],
    captchaCode: [{ required: true, message: '验证码不能为空' }],
};

const showPassword = ref(false);
const router = useRouter();
const formRef = ref();
const rememberPwd = ref(false);

onMounted(() => {
    document.onkeyup = (e) => {
        if (e.keyCode == 13) {
            onLogin();
        }
    };
});

onUnmounted(() => {
    document.onkeyup = null;
});

//登录
async function onLogin() {
    formRef.value.validate().then(async () => {
        try {
            SmartLoading.show();
            const res = await loginApi.login(loginForm);
            stopRefrestCaptchaInterval();
            saveTokenToCookie(res.data.token ? res.data.token : '');
            message.success('登录成功');
            //更新用户信息到pinia
            useUserStore().setUserLoginInfo(res.data);
            //构建系统的路由
            buildRoutes();
            router.push('/home');
        } catch (e) {
            if (e.data && e.data.code === 30001) {
                loginForm.captchaCode = '';
                getCaptcha();
            }
            smartSentry.captureError(e);
        } finally {
            SmartLoading.hide();
        }
    });
}

//--------------------- 验证码 ---------------------------------

const captchaBase64Image = ref('');
async function getCaptcha() {
    try {
        let captchaResult = await loginApi.getCaptcha();
        captchaBase64Image.value = captchaResult.data.captchaBase64Image;
        loginForm.captchaUuid = captchaResult.data.captchaUuid;
        beginRefrestCaptchaInterval(captchaResult.data.expireSeconds);
    } catch (e) {
        console.log(e);
    }
}

let refrestCaptchaInterval = null;
function beginRefrestCaptchaInterval(expireSeconds) {
    if (refrestCaptchaInterval === null) {
        refrestCaptchaInterval = setInterval(getCaptcha, (expireSeconds - 5) * 1000);
    }
}

function stopRefrestCaptchaInterval() {
    if (refrestCaptchaInterval != null) {
        clearInterval(refrestCaptchaInterval);
        refrestCaptchaInterval = null;
    }
}

// onMounted(getCaptcha);
</script>
<style lang="less" scoped>
@import './login.less';
</style>
