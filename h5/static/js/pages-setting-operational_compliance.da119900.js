(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-setting-operational_compliance"],{"51d4":function(t,e,i){"use strict";i.d(e,"b",(function(){return a})),i.d(e,"c",(function(){return r})),i.d(e,"a",(function(){return n}));var n={uNavbar:i("ab21").default},a=function(){var t=this.$createElement,e=this._self._c||t;return e("v-uni-view",[e("u-navbar",{attrs:{title:this.article.title}}),e("v-uni-view",{staticClass:"m-30"},[e("v-uni-text",{staticClass:"d-block font-size-32 text-center"},[this._v(this._s(this.article.title))]),e("v-uni-view",{staticClass:"mt-20 text-white",domProps:{innerHTML:this._s(this.article.content)}})],1)],1)},r=[]},"8d77":function(t,e,i){"use strict";i.r(e);var n=i("51d4"),a=i("b60a");for(var r in a)["default"].indexOf(r)<0&&function(t){i.d(e,t,(function(){return a[t]}))}(r);var u=i("f0c5"),s=Object(u["a"])(a["default"],n["b"],n["c"],!1,null,"efa429c0",null,!1,n["a"],void 0);e["default"]=s.exports},"916e":function(t,e,i){"use strict";i("7a82"),Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;e.default={data:function(){return{article:{}}},onLoad:function(t){var e=t.id;this.id=e},onShow:function(){this.getNewsDetail()},methods:{getNewsDetail:function(){var t=this;this.$u.api.index.getOperationalCompliance().then((function(e){t.article=e.message}))}}}},b60a:function(t,e,i){"use strict";i.r(e);var n=i("916e"),a=i.n(n);for(var r in n)["default"].indexOf(r)<0&&function(t){i.d(e,t,(function(){return n[t]}))}(r);e["default"]=a.a}}]);