(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-market-market"],{"3fff":function(t,a,n){"use strict";n.r(a);var e=n("f42a"),i=n("cedd");for(var u in i)["default"].indexOf(u)<0&&function(t){n.d(a,t,(function(){return i[t]}))}(u);var r=n("f0c5"),c=Object(r["a"])(i["default"],e["b"],e["c"],!1,null,null,null,!1,e["a"],void 0);a["default"]=c.exports},cedd:function(t,a,n){"use strict";n.r(a);var e=n("d2bc"),i=n.n(e);for(var u in e)["default"].indexOf(u)<0&&function(t){n.d(a,t,(function(){return e[t]}))}(u);a["default"]=i.a},d2bc:function(t,a,n){"use strict";(function(t){n("7a82");var e=n("4ea4").default;Object.defineProperty(a,"__esModule",{value:!0}),a.default=void 0;var i=e(n("5530"));n("d81d"),n("7db0"),n("d3b7");var u=e(n("d2e5")),r={components:{MarketList:u.default},data:function(){return{hqData:[],currentNav:1,zxData:[]}},onLoad:function(){this.getHomeData()},computed:{navs:function(){var t=this.$t("transaction");return[{name:t.favorites},{name:"USD"}]}},methods:{navChangeFunc:function(a){t.log(a),this.currentNav=a},getHomeData:function(){var a=this;this.$u.api.market.getOptionalList().then((function(n){a.zxData=n.data,t.log(a.zxData)})),this.$u.api.index.getIndexList().then((function(n){a.hqData=n.data.pro,t.log(a.hqData)}))},getIndexAjax:function(){var t=this;this.$u.api.index.getIndexAjax().then((function(a){var n=t.hqData,e=t.zxData,u=n.map((function(t){var n=a.data.find((function(a){return t.pid===a.pid}));return(0,i.default)((0,i.default)((0,i.default)({},t),n),{},{Price:n.price})})),r=e.map((function(t){var n=a.data.find((function(a){return t.pid===a.pid}));return(0,i.default)((0,i.default)((0,i.default)({},t),n),{},{Price:n.price})}));t.hqData=u,t.zxData=r}))}},onShow:function(){var t=this;this.timer=setInterval((function(){t.getIndexAjax()}),5e3)},onHide:function(){this.timer&&(clearTimeout(this.timer),this.timer=null)}};a.default=r}).call(this,n("5a52")["default"])},f42a:function(t,a,n){"use strict";n.d(a,"b",(function(){return i})),n.d(a,"c",(function(){return u})),n.d(a,"a",(function(){return e}));var e={uNavbar:n("e664").default,uSubsection:n("26c3").default},i=function(){var t=this,a=t.$createElement,n=t._self._c||a;return n("v-uni-view",{staticClass:"px-30 pt-30"},[n("u-navbar",{attrs:{title:t.$t("home.transaction")+t.$t("home.market"),isBack:!1}}),n("u-subsection",{staticStyle:{flex:"1"},attrs:{list:t.navs,current:t.currentNav},on:{change:function(a){arguments[0]=a=t.$handleEvent(a),t.navChangeFunc.apply(void 0,arguments)}}}),n("MarketList",{attrs:{hqData:0===t.currentNav?t.zxData:t.hqData}})],1)},u=[]}}]);