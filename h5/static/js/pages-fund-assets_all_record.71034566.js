(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-fund-assets_all_record"],{"020f":function(t,e,a){"use strict";a.d(e,"b",(function(){return i})),a.d(e,"c",(function(){return s})),a.d(e,"a",(function(){return n}));var n={uNavbar:a("063a").default,defaultPage:a("5455").default},i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("v-uni-view",{staticClass:"pb-50"},[a("u-navbar",{attrs:{title:t.i18n.financialRecords}}),a("v-uni-view",{staticClass:"m-30"},[a("v-uni-view",{staticClass:"mt-30"},[t.list.length?t._l(t.list,(function(e){return a("v-uni-view",{staticClass:"p-30 box-shadow border-radius-20 mb-30 bg-black text-white"},[a("v-uni-view",{staticClass:"d-flex-between-center py-10"},[a("v-uni-text",{staticClass:"opacity-50"},[t._v(t._s(t.i18n.number))]),a("v-uni-text",{staticClass:"font-weight-bold font-size-32",style:{color:t.$utils.getColor(e.value)}},[t._v(t._s(Number(e.value)+" "+e.currency_name))])],1),a("v-uni-view",{staticClass:"d-flex-between-center py-10"},[a("v-uni-text",{staticClass:"opacity-50"},[t._v(t._s(t.i18n.time))]),a("v-uni-text",{staticClass:"font-weight-bold"},[t._v(t._s(e.created_time))])],1),a("v-uni-view",{staticClass:"py-10 font-size-30"},[t._v(t._s(e.info))])],1)})):a("default-page")],2)],1)],1)},s=[]},"26ca":function(t,e,a){"use strict";a.r(e);var n=a("020f"),i=a("ba5b");for(var s in i)["default"].indexOf(s)<0&&function(t){a.d(e,t,(function(){return i[t]}))}(s);var c=a("f0c5"),u=Object(c["a"])(i["default"],n["b"],n["c"],!1,null,"458fa229",null,!1,n["a"],void 0);e["default"]=u.exports},"2dff":function(t,e,a){"use strict";a.r(e);var n=a("48fb"),i=a.n(n);for(var s in n)["default"].indexOf(s)<0&&function(t){a.d(e,t,(function(){return n[t]}))}(s);e["default"]=i.a},"30f5":function(t,e,a){t.exports=a.p+"static/img/order.bbe41bc4.svg"},3414:function(t,e,a){t.exports=a.p+"static/img/collect.5699c6cc.svg"},"359f":function(t,e,a){t.exports=a.p+"static/img/content.b2082db3.svg"},"48fb":function(t,e,a){"use strict";a("7a82"),Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0,a("a9e3");var n={name:"default-page",props:{name:{type:String,default:"empty"},length:{type:Number,default:0},total:{type:Number,default:0}},data:function(){return{list:{address:a("b9ed"),bill:a("9673"),card:a("8d99"),collect:a("3414"),comment:a("624a"),content:a("359f"),coupon:a("f3a8"),data:a("b52a"),message:a("dba2"),net:a("6da0"),order:a("30f5"),empty:a("a13c"),update:a("6724")}}},computed:{data:function(){var t=this.list[this.name];return t||(t?void 0:this.list["empty"])}}};e.default=n},5455:function(t,e,a){"use strict";a.r(e);var n=a("cf64"),i=a("2dff");for(var s in i)["default"].indexOf(s)<0&&function(t){a.d(e,t,(function(){return i[t]}))}(s);var c=a("f0c5"),u=Object(c["a"])(i["default"],n["b"],n["c"],!1,null,"63a6c9d6",null,!1,n["a"],void 0);e["default"]=u.exports},"624a":function(t,e,a){t.exports=a.p+"static/img/comment.cb83b787.svg"},6724:function(t,e,a){t.exports=a.p+"static/img/update.c78e31a6.svg"},"67d5":function(t,e,a){"use strict";a("7a82");var n=a("4ea4").default;Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0,a("99af");var i=n(a("2909")),s={data:function(){return{currency:0,type_id:0,type_name:"",balance:{},page:1,list:[],canGet:!0,assetsType:{}}},onShow:function(){this.getLegalLog()},methods:{getLegalLog:function(){var t=this;if(this.canGet){var e=this.currency,a=this.type_id,n=this.page;this.$u.api.wallet.getLegalLog(e,a,n).then((function(e){var a=e.message.list;a.length?(t.list=[].concat((0,i.default)(t.list),(0,i.default)(a)),t.page++):t.canGet=!1}))}}},computed:{i18n:function(){return this.$t("fund")}},onReachBottom:function(){this.getLegalLog()}};e.default=s},"6da0":function(t,e,a){t.exports=a.p+"static/img/net.2bbab96f.svg"},"8d99":function(t,e,a){t.exports=a.p+"static/img/card.eae8205b.svg"},9673:function(t,e,a){t.exports=a.p+"static/img/bill.85b3a510.svg"},a13c:function(t,e,a){t.exports=a.p+"static/img/empty.0449f455.svg"},b52a:function(t,e,a){t.exports=a.p+"static/img/data.7cad5f8c.svg"},b9ed:function(t,e,a){t.exports=a.p+"static/img/address.14da99cd.svg"},ba5b:function(t,e,a){"use strict";a.r(e);var n=a("67d5"),i=a.n(n);for(var s in n)["default"].indexOf(s)<0&&function(t){a.d(e,t,(function(){return n[t]}))}(s);e["default"]=i.a},cf64:function(t,e,a){"use strict";a.d(e,"b",(function(){return n})),a.d(e,"c",(function(){return i})),a.d(e,"a",(function(){}));var n=function(){var t=this.$createElement,e=this._self._c||t;return e("v-uni-view",{},[e("v-uni-view",[this.total?e("v-uni-text",{staticClass:"text-center opacity-50 font-size-22 py-20 d-block"},[this._v(this._s(this.$t("common.hasNoData")))]):e("v-uni-image",{staticClass:"mx-auto d-block my-30",staticStyle:{width:"320rpx",height:"240rpx"},attrs:{src:this.data}})],1),this._t("default")],2)},i=[]},dba2:function(t,e,a){t.exports=a.p+"static/img/message.392d6a60.svg"},f3a8:function(t,e,a){t.exports=a.p+"static/img/coupon.f9aba174.svg"}}]);