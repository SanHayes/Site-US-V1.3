(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-market-market"],{"43fb":function(t,a,n){"use strict";n.r(a);var e=n("6ed8"),i=n("a970");for(var r in i)["default"].indexOf(r)<0&&function(t){n.d(a,t,(function(){return i[t]}))}(r);var u=n("f0c5"),o=Object(u["a"])(i["default"],e["b"],e["c"],!1,null,null,null,!1,e["a"],void 0);a["default"]=o.exports},"6ed8":function(t,a,n){"use strict";n.d(a,"b",(function(){return i})),n.d(a,"c",(function(){return r})),n.d(a,"a",(function(){return e}));var e={uNavbar:n("e226").default,uSubsection:n("b2a2").default},i=function(){var t=this,a=t.$createElement,n=t._self._c||a;return n("v-uni-view",{staticClass:"px-30 pt-30"},[n("u-navbar",{attrs:{title:t.$t("home.transaction")+t.$t("home.market"),isBack:!1}}),n("u-subsection",{staticStyle:{flex:"1"},attrs:{list:t.navs,current:t.currentNav},on:{change:function(a){arguments[0]=a=t.$handleEvent(a),t.navChangeFunc.apply(void 0,arguments)}}}),n("MarketList",{attrs:{hqData:0===t.currentNav?t.zxData:t.hqData}})],1)},r=[]},8822:function(t,a,n){"use strict";(function(t){n("7a82");var e=n("4ea4").default;Object.defineProperty(a,"__esModule",{value:!0}),a.default=void 0;var i=e(n("5530"));n("d81d"),n("7db0"),n("d3b7");var r=e(n("6887")),u={components:{MarketList:r.default},data:function(){return{hqData:[],currentNav:1,zxData:[]}},onLoad:function(){this.getHomeData()},onTabItemTap:function(t){this.getHomeData()},computed:{navs:function(){var t=this.$t("transaction");return[{name:t.favorites},{name:"USD"}]}},methods:{navChangeFunc:function(a){t.log(a),this.currentNav=a},getHomeData:function(){var a=this;this.$u.api.market.getOptionalList().then((function(n){a.zxData=n.data,t.log(a.zxData)})),this.$u.api.index.getIndexList().then((function(n){a.hqData=n.data.pro,t.log(a.hqData)}))},getIndexAjax:function(){var t=this;this.$u.api.index.getIndexAjax().then((function(a){var n=t.hqData,e=t.zxData,r=n.map((function(t){var n=a.data.find((function(a){return t.pid===a.pid}));return(0,i.default)((0,i.default)((0,i.default)({},t),n),{},{Price:n.price})})),u=e.map((function(t){var n=a.data.find((function(a){return t.pid===a.pid}));return(0,i.default)((0,i.default)((0,i.default)({},t),n),{},{Price:n.price})}));t.hqData=r,t.zxData=u}))},clear:function(){this.timer&&(clearInterval(this.timer),this.timer=null)}},onShow:function(){var a=this;this.clear(),this.timer=setInterval((function(){t.log("market/market"),a.getIndexAjax()}),5e3)},onHide:function(){t.log("market hide",this.timer),this.clear()}};a.default=u}).call(this,n("5a52")["default"])},a970:function(t,a,n){"use strict";n.r(a);var e=n("8822"),i=n.n(e);for(var r in e)["default"].indexOf(r)<0&&function(t){n.d(a,t,(function(){return e[t]}))}(r);a["default"]=i.a}}]);