(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-setting-real_mark"],{21492:function(t,n,i){"use strict";i.d(n,"b",(function(){return a})),i.d(n,"c",(function(){return s})),i.d(n,"a",(function(){return e}));var e={uNavbar:i("e226").default},a=function(){var t=this,n=t.$createElement,i=t._self._c||n;return i("v-uni-view",{staticClass:"text-white"},[i("u-navbar",{attrs:{title:t.i18n.authentication}}),i("v-uni-view",{staticClass:"m-30"},[i("v-uni-text",{staticClass:"d-block font-size-32 opacity-60 mb-20"},[t._v(t._s(t.i18n.authentication1))]),0==t.review_status?i("v-uni-button",{staticClass:"warning-button",on:{click:function(n){arguments[0]=n=t.$handleEvent(n),t.$utils.jump("/pages/setting/real?type=1")}}},[t._v(t._s(t.i18n.goAudit))]):1==t.review_status?i("v-uni-button",{staticClass:"primary-button"},[t._v(t._s(t.i18n.auditing))]):2==t.review_status?i("v-uni-button",{staticClass:"success-button"},[t._v(t._s(t.i18n.hasaudit))]):t._e()],1),i("v-uni-view",{staticClass:"m-30"},[i("v-uni-text",{staticClass:"d-block font-size-32 opacity-60 mb-20"},[t._v(t._s(t.i18n.authentication2))]),t.review_status<2?i("v-uni-button",{staticClass:"secondary-button"},[t._v(t._s(t.i18n.goAudit))]):0==t.advanced_review_status?i("v-uni-button",{staticClass:"warning-button",on:{click:function(n){arguments[0]=n=t.$handleEvent(n),t.$utils.jump("/pages/setting/real?type=2")}}},[t._v(t._s(t.i18n.goAudit))]):1==t.advanced_review_status?i("v-uni-button",{staticClass:"primary-button"},[t._v(t._s(t.i18n.auditing))]):2==t.advanced_review_status?i("v-uni-button",{staticClass:"success-button"},[t._v(t._s(t.i18n.hasaudit))]):t._e()],1)],1)},s=[]},2421:function(t,n,i){"use strict";i.r(n);var e=i("bc7d"),a=i.n(e);for(var s in e)["default"].indexOf(s)<0&&function(t){i.d(n,t,(function(){return e[t]}))}(s);n["default"]=a.a},"8b0a":function(t,n,i){"use strict";i.r(n);var e=i("21492"),a=i("2421");for(var s in a)["default"].indexOf(s)<0&&function(t){i.d(n,t,(function(){return a[t]}))}(s);var u=i("f0c5"),c=Object(u["a"])(a["default"],e["b"],e["c"],!1,null,"63ba626e",null,!1,e["a"],void 0);n["default"]=c.exports},bc7d:function(t,n,i){"use strict";i("7a82"),Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var e={data:function(){return{review_status:0,advanced_review_status:0}},onShow:function(){this.getUserRealState()},methods:{getUserRealState:function(){var t=this;this.$u.api.setting.getUserRealState(uni.getStorageSync("token")).then((function(n){var i=n.data,e=i.is_check,a=i.up_check;t.review_status=e,t.advanced_review_status=a}))}},computed:{i18n:function(){return this.$t("setting")}}};n.default=e}}]);