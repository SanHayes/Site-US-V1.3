(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-transaction-currency_order"],{"07d8":function(t,i,e){t.exports=e.p+"static/img/bill.85b3a510.svg"},1355:function(t,i,e){"use strict";e.r(i);var a=e("cc78"),n=e("98a2");for(var s in n)["default"].indexOf(s)<0&&function(t){e.d(i,t,(function(){return n[t]}))}(s);var c=e("f0c5"),u=Object(c["a"])(n["default"],a["b"],a["c"],!1,null,"63a6c9d6",null,!1,a["a"],void 0);i["default"]=u.exports},"1c23":function(t,i,e){t.exports=e.p+"static/img/content.b2082db3.svg"},"22a6":function(t,i,e){"use strict";e("7a82"),Object.defineProperty(i,"__esModule",{value:!0}),i.default=void 0,e("a9e3");var a={name:"default-page",props:{name:{type:String,default:"empty"},length:{type:Number,default:0},total:{type:Number,default:0}},data:function(){return{list:{address:e("adaf"),bill:e("07d8"),card:e("4d3c"),collect:e("4ab4"),comment:e("9697"),content:e("1c23"),coupon:e("bfbf"),data:e("8bcb"),message:e("3d51"),net:e("e57c"),order:e("95ca"),empty:e("74b1"),update:e("da74")}}},computed:{data:function(){var t=this.list[this.name];return t||(t?void 0:this.list["empty"])}}};i.default=a},"3d51":function(t,i,e){t.exports=e.p+"static/img/message.392d6a60.svg"},"4ab4":function(t,i,e){t.exports=e.p+"static/img/collect.5699c6cc.svg"},"4d3c":function(t,i,e){t.exports=e.p+"static/img/card.eae8205b.svg"},"6b58b":function(t,i,e){"use strict";e.r(i);var a=e("b422"),n=e.n(a);for(var s in a)["default"].indexOf(s)<0&&function(t){e.d(i,t,(function(){return a[t]}))}(s);i["default"]=n.a},"74b1":function(t,i,e){t.exports=e.p+"static/img/empty.0449f455.svg"},"8bcb":function(t,i,e){t.exports=e.p+"static/img/data.7cad5f8c.svg"},"95ca":function(t,i,e){t.exports=e.p+"static/img/order.bbe41bc4.svg"},9697:function(t,i,e){t.exports=e.p+"static/img/comment.cb83b787.svg"},"98a2":function(t,i,e){"use strict";e.r(i);var a=e("22a6"),n=e.n(a);for(var s in a)["default"].indexOf(s)<0&&function(t){e.d(i,t,(function(){return a[t]}))}(s);i["default"]=n.a},adaf:function(t,i,e){t.exports=e.p+"static/img/address.14da99cd.svg"},b422:function(t,i,e){"use strict";(function(t){e("7a82");var a=e("4ea4").default;Object.defineProperty(i,"__esModule",{value:!0}),i.default=void 0,e("99af");var n=a(e("2909")),s={data:function(){return{page:1,canGet:!0,originalList:[],list:[],limit:10,type:0,showNav:!0,from:1,uid:uni.getStorageSync("token")}},onLoad:function(t){this.from=t.from||0},onShow:function(){var t=this;this.page=1,this.canGet=!0,this.originalList=[],this.list=[],this.showNav=!1,setTimeout((function(){t.showNav=!0}),100),this.filterList()},methods:{getChiCangList:function(){var i=this,e=this.page,a=this.limit,s=this.uid;this.$u.api.market.getChiCangList({page:e,limit:a,uid:s}).then((function(e){var a=e.data.data;t.log(a),a.length&&(i.list=[].concat((0,n.default)(i.list),(0,n.default)(a)),i.page++)}))},getPingCangList:function(){var t=this,i=this.page,e=this.limit,a=this.uid;this.$u.api.market.getPingCangList({page:i,limit:e,uid:a}).then((function(i){var e=i.data;e.length&&(t.list=[].concat((0,n.default)(t.list),(0,n.default)(e)),t.page++)}))},filterList:function(){var t=this.type;this.page=1,this.list=[],0==t?this.getChiCangList():this.getPingCangList()},changeNav:function(i){t.log(i),this.type=i,this.filterList()},backTo:function(){1==this.from?uni.navigateBack({delta:1}):uni.switchTab({url:"/pages/transaction/index"})}},computed:{i18n:function(){return this.$t("transaction")},nav:function(){this.$t("transaction");return[{name:"持仓"},{name:"平仓"}]}}};i.default=s}).call(this,e("5a52")["default"])},bb71:function(t,i,e){"use strict";e.r(i);var a=e("df7d"),n=e("6b58b");for(var s in n)["default"].indexOf(s)<0&&function(t){e.d(i,t,(function(){return n[t]}))}(s);var c=e("f0c5"),u=Object(c["a"])(n["default"],a["b"],a["c"],!1,null,"045c93f4",null,!1,a["a"],void 0);i["default"]=u.exports},bfbf:function(t,i,e){t.exports=e.p+"static/img/coupon.f9aba174.svg"},cc78:function(t,i,e){"use strict";e.d(i,"b",(function(){return a})),e.d(i,"c",(function(){return n})),e.d(i,"a",(function(){}));var a=function(){var t=this.$createElement,i=this._self._c||t;return i("v-uni-view",{},[i("v-uni-view",[this.total?i("v-uni-text",{staticClass:"text-center opacity-50 font-size-22 py-20 d-block"},[this._v(this._s(this.$t("common.hasNoData")))]):i("v-uni-image",{staticClass:"mx-auto d-block my-30",staticStyle:{width:"320rpx",height:"240rpx"},attrs:{src:this.data}})],1),this._t("default")],2)},n=[]},da74:function(t,i,e){t.exports=e.p+"static/img/update.c78e31a6.svg"},df7d:function(t,i,e){"use strict";e.d(i,"b",(function(){return n})),e.d(i,"c",(function(){return s})),e.d(i,"a",(function(){return a}));var a={uNavbar:e("e664").default,uSubsection:e("26c3").default,defaultPage:e("1355").default},n=function(){var t=this,i=t.$createElement,e=t._self._c||i;return e("v-uni-view",[e("u-navbar",{attrs:{title:t.i18n.entrust,"custom-back":t.backTo}}),e("v-uni-view",{staticClass:"p-30"},[t.showNav?e("u-subsection",{attrs:{list:t.nav,current:t.type},on:{change:function(i){arguments[0]=i=t.$handleEvent(i),t.changeNav.apply(void 0,arguments)}}}):t._e(),e("v-uni-view",{staticClass:"mt-30"},t._l(t.list,(function(i){return e("v-uni-view",{key:i.id,staticClass:"p-20 box-shadow border-radius-20 mb-20 bg-black text-white"},[e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("商品名称")]),e("v-uni-text",{staticClass:"font-weight-bold opacity-90"},[t._v(t._s(i.ptitle))])],1),e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("购买方向")]),e("v-uni-text",{staticClass:"font-weight-bold",class:1==i.ostyle?"text-error":"text-success"},[t._v(t._s(0==i.ostyle?t.i18n.buyUp:t.i18n.buyDown))])],1),e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("建仓价格")]),e("v-uni-text",{staticClass:"font-weight-bold opacity-90"},[t._v(t._s(Number(i.buyprice).toFixed(4)))])],1),e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("手续费")]),e("v-uni-text",{staticClass:"font-weight-bold opacity-90"},[t._v(t._s(i.sx_fee))])],1),e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("交易金额")]),e("v-uni-text",{staticClass:"font-weight-bold opacity-90"},[t._v(t._s(Number(i.fee)))])],1),e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("建仓时间")]),e("v-uni-text",{staticClass:"font-weight-bold opacity-90"},[t._v(t._s(i.buytime))])],1),e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("平仓时间")]),e("v-uni-text",{staticClass:"font-weight-bold opacity-90"},[t._v(t._s(i.selltime))])],1),e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("平仓价格")]),e("v-uni-text",{staticClass:"font-weight-bold opacity-90"},[t._v(t._s(i.sellprice))])],1),e("v-uni-view",{staticClass:"d-flex-between-center py-10"},[e("v-uni-text",{staticClass:"opacity-50"},[t._v("实际盈亏")]),e("v-uni-text",{staticClass:"tag-primary font-size-20"},[t._v(t._s(i.ploss))])],1)],1)})),1),t.list.length?t._e():e("default-page")],1)],1)},s=[]},e57c:function(t,i,e){t.exports=e.p+"static/img/net.2bbab96f.svg"}}]);