(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-setting-share"],{"0634":function(t,e,r){"use strict";r.d(e,"b",(function(){return n})),r.d(e,"c",(function(){return o})),r.d(e,"a",(function(){}));var n=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("v-uni-view",{staticClass:"uqrcode"},["view"===t.options.mode?r("v-uni-view",{staticClass:"uqrcode-view",style:{width:t.options.size+"px",height:t.options.size+"px",padding:t.options.margin+"px","background-color":t.options.backgroundColor}},t._l(t.modules.length,(function(e,n){return r("v-uni-view",{key:n,staticClass:"uqrcode-view-row"},t._l(t.modules.length,(function(e,o){return r("v-uni-view",{key:o,staticClass:"uqrcode-view-col",style:{width:t.colSize+"px",height:t.colSize+"px","background-color":t.modules[n][o]?t.options.foregroundColor:t.options.backgroundColor}})})),1)})),1):"canvas"===t.options.mode?r("v-uni-canvas",{staticClass:"uqrcode-canvas",style:{width:t.options.size+"px",height:t.options.size+"px"},attrs:{id:t.options.canvasId,"canvas-id":t.options.canvasId}}):t._e()],1)},o=[]},"34e1":function(t,e,r){"use strict";r.r(e);var n=r("0634"),o=r("7c92");for(var i in o)["default"].indexOf(i)<0&&function(t){r.d(e,t,(function(){return o[t]}))}(i);r("6e13");var a=r("f0c5"),s=Object(a["a"])(o["default"],n["b"],n["c"],!1,null,"6cb5cd74",null,!1,n["a"],void 0);e["default"]=s.exports},5622:function(t,e,r){"use strict";r.d(e,"b",(function(){return o})),r.d(e,"c",(function(){return i})),r.d(e,"a",(function(){return n}));var n={uNavbar:r("e226").default,uqrcode:r("34e1").default},o=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("v-uni-view",[r("u-navbar",{attrs:{title:t.i18n.share}}),r("v-uni-text",{staticClass:"d-block text-center font-size-50 text-white m-30 py-30"},[t._v(t._s(t.i18n.my_qrcode))]),r("v-uni-view",{staticClass:"m-30 p-30 border-radius-20 bg-black text-white"},[r("v-uni-view",{staticClass:"d-flex  align-items-center"},[r("v-uni-image",{staticClass:"border-radius-50per border",staticStyle:{width:"120rpx",height:"120rpx"},attrs:{src:t._f("retImageUrl")(t.user.head_portrait),mode:"aspectFill"}}),r("v-uni-view",{staticClass:"ml-22"},[r("v-uni-text",{staticClass:"d-block font-size-36 font-weight-bold"},[t._v(t._s(t.user.account_number||t.$t("common.plsLogin")))]),t.user.id?r("v-uni-text",{staticClass:"d-block font-size-22 opacity-50 mt-4"},[t._v("ID:"+t._s(t.user.id))]):t._e(),t.user.score?r("v-uni-text",{staticClass:"d-block font-size-22 opacity-50 mt-4"},[t._v(t._s(t.i18n.score)+":"+t._s(Number(t.user.score)))]):t._e()],1)],1),r("v-uni-view",{staticClass:"mt-50 mx-auto text-center p-30 bg-333 border-radius-20",staticStyle:{width:"330px"}},[r("uqrcode",{ref:"uqrcode"})],1)],1)],1)},i=[]},"6e13":function(t,e,r){"use strict";var n=r("ca72"),o=r.n(n);o.a},"725f":function(t,e,r){"use strict";r("7a82");var n=r("4ea4").default;Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0,r("d3b7");var o=n(r("5530")),i=n(r("a9e9")),a={name:"uqrcode",data:function(){return{options:i.default.defaults,modules:[],result:{}}},computed:{colSize:function(){return(this.options.size-2*this.options.margin)/this.modules.length}},methods:{make:function(t){var e=this;if(t=(0,o.default)((0,o.default)({},this.options),t),t.mode||(t.mode="view"),t.canvasId||(t.canvasId=this.uuid()),this.options=t,"view"===t.mode)this.modules=i.default.getModules(t);else if("canvas"===t.mode)return new Promise((function(r,n){i.default.make(t,e).then((function(t){e.result=t,r((0,o.default)({},t))})).catch((function(t){n(t)}))}))},save:function(){"view"===this.options.mode?uni.showToast({icon:"none",title:"view模式不支持保存，请提示用户使用截屏保存"}):"canvas"===this.options.mode&&uni.showToast({icon:"none",title:"canvas H5不支持保存，请将二维码放置在image组件，再提示用户长按image保存"})},uuid:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:32,e=!(arguments.length>1&&void 0!==arguments[1])||arguments[1],r=arguments.length>2&&void 0!==arguments[2]?arguments[2]:null,n="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split(""),o=[];if(r=r||n.length,t)for(var i=0;i<t;i++)o[i]=n[0|Math.random()*r];else{var a;o[8]=o[13]=o[18]=o[23]="-",o[14]="4";for(var s=0;s<36;s++)o[s]||(a=0|16*Math.random(),o[s]=n[19==s?3&a|8:a])}return e?(o.shift(),"u"+o.join("")):o.join("")}}};e.default=a},"7c92":function(t,e,r){"use strict";r.r(e);var n=r("725f"),o=r.n(n);for(var i in n)["default"].indexOf(i)<0&&function(t){r.d(e,t,(function(){return n[t]}))}(i);e["default"]=o.a},"89a0":function(t,e,r){"use strict";r.r(e);var n=r("9aa7"),o=r.n(n);for(var i in n)["default"].indexOf(i)<0&&function(t){r.d(e,t,(function(){return n[t]}))}(i);e["default"]=o.a},"8eb5":function(t,e,r){"use strict";r.r(e);var n=r("5622"),o=r("89a0");for(var i in o)["default"].indexOf(i)<0&&function(t){r.d(e,t,(function(){return o[t]}))}(i);var a=r("f0c5"),s=Object(a["a"])(o["default"],n["b"],n["c"],!1,null,"3035fbe6",null,!1,n["a"],void 0);e["default"]=s.exports},"9aa7":function(t,e,r){"use strict";r("7a82"),Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;e.default={data:function(){return{user:{}}},onLoad:function(){this.user=this.$store.state.user},onShow:function(){this.$nextTick((function(){this.$refs.uqrcode.make({size:300,text:this.$store.state.baseDomain+"/h5/#/pages/common/register?code="+this.user.extension_code})}))},computed:{i18n:function(){return this.$t("setting")}}}},a9e9:function(t,e,r){"use strict";r("7a82");var n=r("4ea4").default;Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var o=n(r("5530"));r("14d9"),r("d9e2"),r("d401"),r("d3b7");var i={};(function(){function t(t){this.mode=r.MODE_8BIT_BYTE,this.data=t}function e(t,e){this.typeNumber=t,this.errorCorrectLevel=e,this.modules=null,this.moduleCount=0,this.dataCache=null,this.dataList=new Array}t.prototype={getLength:function(t){return this.data.length},write:function(t){for(var e=0;e<this.data.length;e++)t.put(this.data.charCodeAt(e),8)}},e.prototype={addData:function(e){var r=new t(e);this.dataList.push(r),this.dataCache=null},isDark:function(t,e){if(t<0||this.moduleCount<=t||e<0||this.moduleCount<=e)throw new Error(t+","+e);return this.modules[t][e]},getModuleCount:function(){return this.moduleCount},make:function(){if(this.typeNumber<1){var t=1;for(t=1;t<40;t++){for(var e=c.getRSBlocks(t,this.errorCorrectLevel),r=new f,n=0,o=0;o<e.length;o++)n+=e[o].dataCount;for(o=0;o<this.dataList.length;o++){var i=this.dataList[o];r.put(i.mode,4),r.put(i.getLength(),s.getLengthInBits(i.mode,t)),i.write(r)}if(r.getLengthInBits()<=8*n)break}this.typeNumber=t}this.makeImpl(!1,this.getBestMaskPattern())},makeImpl:function(t,r){this.moduleCount=4*this.typeNumber+17,this.modules=new Array(this.moduleCount);for(var n=0;n<this.moduleCount;n++){this.modules[n]=new Array(this.moduleCount);for(var o=0;o<this.moduleCount;o++)this.modules[n][o]=null}this.setupPositionProbePattern(0,0),this.setupPositionProbePattern(this.moduleCount-7,0),this.setupPositionProbePattern(0,this.moduleCount-7),this.setupPositionAdjustPattern(),this.setupTimingPattern(),this.setupTypeInfo(t,r),this.typeNumber>=7&&this.setupTypeNumber(t),null==this.dataCache&&(this.dataCache=e.createData(this.typeNumber,this.errorCorrectLevel,this.dataList)),this.mapData(this.dataCache,r)},setupPositionProbePattern:function(t,e){for(var r=-1;r<=7;r++)if(!(t+r<=-1||this.moduleCount<=t+r))for(var n=-1;n<=7;n++)e+n<=-1||this.moduleCount<=e+n||(this.modules[t+r][e+n]=0<=r&&r<=6&&(0==n||6==n)||0<=n&&n<=6&&(0==r||6==r)||2<=r&&r<=4&&2<=n&&n<=4)},getBestMaskPattern:function(){for(var t=0,e=0,r=0;r<8;r++){this.makeImpl(!0,r);var n=s.getLostPoint(this);(0==r||t>n)&&(t=n,e=r)}return e},createMovieClip:function(t,e,r){var n=t.createEmptyMovieClip(e,r);this.make();for(var o=0;o<this.modules.length;o++)for(var i=1*o,a=0;a<this.modules[o].length;a++){var s=1*a,u=this.modules[o][a];u&&(n.beginFill(0,100),n.moveTo(s,i),n.lineTo(s+1,i),n.lineTo(s+1,i+1),n.lineTo(s,i+1),n.endFill())}return n},setupTimingPattern:function(){for(var t=8;t<this.moduleCount-8;t++)null==this.modules[t][6]&&(this.modules[t][6]=t%2==0);for(var e=8;e<this.moduleCount-8;e++)null==this.modules[6][e]&&(this.modules[6][e]=e%2==0)},setupPositionAdjustPattern:function(){for(var t=s.getPatternPosition(this.typeNumber),e=0;e<t.length;e++)for(var r=0;r<t.length;r++){var n=t[e],o=t[r];if(null==this.modules[n][o])for(var i=-2;i<=2;i++)for(var a=-2;a<=2;a++)this.modules[n+i][o+a]=-2==i||2==i||-2==a||2==a||0==i&&0==a}},setupTypeNumber:function(t){for(var e=s.getBCHTypeNumber(this.typeNumber),r=0;r<18;r++){var n=!t&&1==(e>>r&1);this.modules[Math.floor(r/3)][r%3+this.moduleCount-8-3]=n}for(r=0;r<18;r++){n=!t&&1==(e>>r&1);this.modules[r%3+this.moduleCount-8-3][Math.floor(r/3)]=n}},setupTypeInfo:function(t,e){for(var r=this.errorCorrectLevel<<3|e,n=s.getBCHTypeInfo(r),o=0;o<15;o++){var i=!t&&1==(n>>o&1);o<6?this.modules[o][8]=i:o<8?this.modules[o+1][8]=i:this.modules[this.moduleCount-15+o][8]=i}for(o=0;o<15;o++){i=!t&&1==(n>>o&1);o<8?this.modules[8][this.moduleCount-o-1]=i:o<9?this.modules[8][15-o-1+1]=i:this.modules[8][15-o-1]=i}this.modules[this.moduleCount-8][8]=!t},mapData:function(t,e){for(var r=-1,n=this.moduleCount-1,o=7,i=0,a=this.moduleCount-1;a>0;a-=2){6==a&&a--;while(1){for(var u=0;u<2;u++)if(null==this.modules[n][a-u]){var l=!1;i<t.length&&(l=1==(t[i]>>>o&1));var h=s.getMask(e,n,a-u);h&&(l=!l),this.modules[n][a-u]=l,o--,-1==o&&(i++,o=7)}if(n+=r,n<0||this.moduleCount<=n){n-=r,r=-r;break}}}}},e.PAD0=236,e.PAD1=17,e.createData=function(t,r,n){for(var o=c.getRSBlocks(t,r),i=new f,a=0;a<n.length;a++){var u=n[a];i.put(u.mode,4),i.put(u.getLength(),s.getLengthInBits(u.mode,t)),u.write(i)}var l=0;for(a=0;a<o.length;a++)l+=o[a].dataCount;if(i.getLengthInBits()>8*l)throw new Error("code length overflow. ("+i.getLengthInBits()+">"+8*l+")");i.getLengthInBits()+4<=8*l&&i.put(0,4);while(i.getLengthInBits()%8!=0)i.putBit(!1);while(1){if(i.getLengthInBits()>=8*l)break;if(i.put(e.PAD0,8),i.getLengthInBits()>=8*l)break;i.put(e.PAD1,8)}return e.createBytes(i,o)},e.createBytes=function(t,e){for(var r=0,n=0,o=0,i=new Array(e.length),a=new Array(e.length),u=0;u<e.length;u++){var l=e[u].dataCount,c=e[u].totalCount-l;n=Math.max(n,l),o=Math.max(o,c),i[u]=new Array(l);for(var f=0;f<i[u].length;f++)i[u][f]=255&t.buffer[f+r];r+=l;var d=s.getErrorCorrectPolynomial(c),g=new h(i[u],d.getLength()-1),v=g.mod(d);a[u]=new Array(d.getLength()-1);for(f=0;f<a[u].length;f++){var m=f+v.getLength()-a[u].length;a[u][f]=m>=0?v.get(m):0}}var p=0;for(f=0;f<e.length;f++)p+=e[f].totalCount;var w=new Array(p),C=0;for(f=0;f<n;f++)for(u=0;u<e.length;u++)f<i[u].length&&(w[C++]=i[u][f]);for(f=0;f<o;f++)for(u=0;u<e.length;u++)f<a[u].length&&(w[C++]=a[u][f]);return w};for(var r={MODE_NUMBER:1,MODE_ALPHA_NUM:2,MODE_8BIT_BYTE:4,MODE_KANJI:8},n={L:1,M:0,Q:3,H:2},a={PATTERN000:0,PATTERN001:1,PATTERN010:2,PATTERN011:3,PATTERN100:4,PATTERN101:5,PATTERN110:6,PATTERN111:7},s={PATTERN_POSITION_TABLE:[[],[6,18],[6,22],[6,26],[6,30],[6,34],[6,22,38],[6,24,42],[6,26,46],[6,28,50],[6,30,54],[6,32,58],[6,34,62],[6,26,46,66],[6,26,48,70],[6,26,50,74],[6,30,54,78],[6,30,56,82],[6,30,58,86],[6,34,62,90],[6,28,50,72,94],[6,26,50,74,98],[6,30,54,78,102],[6,28,54,80,106],[6,32,58,84,110],[6,30,58,86,114],[6,34,62,90,118],[6,26,50,74,98,122],[6,30,54,78,102,126],[6,26,52,78,104,130],[6,30,56,82,108,134],[6,34,60,86,112,138],[6,30,58,86,114,142],[6,34,62,90,118,146],[6,30,54,78,102,126,150],[6,24,50,76,102,128,154],[6,28,54,80,106,132,158],[6,32,58,84,110,136,162],[6,26,54,82,110,138,166],[6,30,58,86,114,142,170]],G15:1335,G18:7973,G15_MASK:21522,getBCHTypeInfo:function(t){var e=t<<10;while(s.getBCHDigit(e)-s.getBCHDigit(s.G15)>=0)e^=s.G15<<s.getBCHDigit(e)-s.getBCHDigit(s.G15);return(t<<10|e)^s.G15_MASK},getBCHTypeNumber:function(t){var e=t<<12;while(s.getBCHDigit(e)-s.getBCHDigit(s.G18)>=0)e^=s.G18<<s.getBCHDigit(e)-s.getBCHDigit(s.G18);return t<<12|e},getBCHDigit:function(t){var e=0;while(0!=t)e++,t>>>=1;return e},getPatternPosition:function(t){return s.PATTERN_POSITION_TABLE[t-1]},getMask:function(t,e,r){switch(t){case a.PATTERN000:return(e+r)%2==0;case a.PATTERN001:return e%2==0;case a.PATTERN010:return r%3==0;case a.PATTERN011:return(e+r)%3==0;case a.PATTERN100:return(Math.floor(e/2)+Math.floor(r/3))%2==0;case a.PATTERN101:return e*r%2+e*r%3==0;case a.PATTERN110:return(e*r%2+e*r%3)%2==0;case a.PATTERN111:return(e*r%3+(e+r)%2)%2==0;default:throw new Error("bad maskPattern:"+t)}},getErrorCorrectPolynomial:function(t){for(var e=new h([1],0),r=0;r<t;r++)e=e.multiply(new h([1,u.gexp(r)],0));return e},getLengthInBits:function(t,e){if(1<=e&&e<10)switch(t){case r.MODE_NUMBER:return 10;case r.MODE_ALPHA_NUM:return 9;case r.MODE_8BIT_BYTE:return 8;case r.MODE_KANJI:return 8;default:throw new Error("mode:"+t)}else if(e<27)switch(t){case r.MODE_NUMBER:return 12;case r.MODE_ALPHA_NUM:return 11;case r.MODE_8BIT_BYTE:return 16;case r.MODE_KANJI:return 10;default:throw new Error("mode:"+t)}else{if(!(e<41))throw new Error("type:"+e);switch(t){case r.MODE_NUMBER:return 14;case r.MODE_ALPHA_NUM:return 13;case r.MODE_8BIT_BYTE:return 16;case r.MODE_KANJI:return 12;default:throw new Error("mode:"+t)}}},getLostPoint:function(t){for(var e=t.getModuleCount(),r=0,n=0;n<e;n++)for(var o=0;o<e;o++){for(var i=0,a=t.isDark(n,o),s=-1;s<=1;s++)if(!(n+s<0||e<=n+s))for(var u=-1;u<=1;u++)o+u<0||e<=o+u||0==s&&0==u||a==t.isDark(n+s,o+u)&&i++;i>5&&(r+=3+i-5)}for(n=0;n<e-1;n++)for(o=0;o<e-1;o++){var l=0;t.isDark(n,o)&&l++,t.isDark(n+1,o)&&l++,t.isDark(n,o+1)&&l++,t.isDark(n+1,o+1)&&l++,0!=l&&4!=l||(r+=3)}for(n=0;n<e;n++)for(o=0;o<e-6;o++)t.isDark(n,o)&&!t.isDark(n,o+1)&&t.isDark(n,o+2)&&t.isDark(n,o+3)&&t.isDark(n,o+4)&&!t.isDark(n,o+5)&&t.isDark(n,o+6)&&(r+=40);for(o=0;o<e;o++)for(n=0;n<e-6;n++)t.isDark(n,o)&&!t.isDark(n+1,o)&&t.isDark(n+2,o)&&t.isDark(n+3,o)&&t.isDark(n+4,o)&&!t.isDark(n+5,o)&&t.isDark(n+6,o)&&(r+=40);var h=0;for(o=0;o<e;o++)for(n=0;n<e;n++)t.isDark(n,o)&&h++;var c=Math.abs(100*h/e/e-50)/5;return r+=10*c,r}},u={glog:function(t){if(t<1)throw new Error("glog("+t+")");return u.LOG_TABLE[t]},gexp:function(t){while(t<0)t+=255;while(t>=256)t-=255;return u.EXP_TABLE[t]},EXP_TABLE:new Array(256),LOG_TABLE:new Array(256)},l=0;l<8;l++)u.EXP_TABLE[l]=1<<l;for(l=8;l<256;l++)u.EXP_TABLE[l]=u.EXP_TABLE[l-4]^u.EXP_TABLE[l-5]^u.EXP_TABLE[l-6]^u.EXP_TABLE[l-8];for(l=0;l<255;l++)u.LOG_TABLE[u.EXP_TABLE[l]]=l;function h(t,e){if(void 0==t.length)throw new Error(t.length+"/"+e);var r=0;while(r<t.length&&0==t[r])r++;this.num=new Array(t.length-r+e);for(var n=0;n<t.length-r;n++)this.num[n]=t[n+r]}function c(t,e){this.totalCount=t,this.dataCount=e}function f(){this.buffer=new Array,this.length=0}h.prototype={get:function(t){return this.num[t]},getLength:function(){return this.num.length},multiply:function(t){for(var e=new Array(this.getLength()+t.getLength()-1),r=0;r<this.getLength();r++)for(var n=0;n<t.getLength();n++)e[r+n]^=u.gexp(u.glog(this.get(r))+u.glog(t.get(n)));return new h(e,0)},mod:function(t){if(this.getLength()-t.getLength()<0)return this;for(var e=u.glog(this.get(0))-u.glog(t.get(0)),r=new Array(this.getLength()),n=0;n<this.getLength();n++)r[n]=this.get(n);for(n=0;n<t.getLength();n++)r[n]^=u.gexp(u.glog(t.get(n))+e);return new h(r,0).mod(t)}},c.RS_BLOCK_TABLE=[[1,26,19],[1,26,16],[1,26,13],[1,26,9],[1,44,34],[1,44,28],[1,44,22],[1,44,16],[1,70,55],[1,70,44],[2,35,17],[2,35,13],[1,100,80],[2,50,32],[2,50,24],[4,25,9],[1,134,108],[2,67,43],[2,33,15,2,34,16],[2,33,11,2,34,12],[2,86,68],[4,43,27],[4,43,19],[4,43,15],[2,98,78],[4,49,31],[2,32,14,4,33,15],[4,39,13,1,40,14],[2,121,97],[2,60,38,2,61,39],[4,40,18,2,41,19],[4,40,14,2,41,15],[2,146,116],[3,58,36,2,59,37],[4,36,16,4,37,17],[4,36,12,4,37,13],[2,86,68,2,87,69],[4,69,43,1,70,44],[6,43,19,2,44,20],[6,43,15,2,44,16],[4,101,81],[1,80,50,4,81,51],[4,50,22,4,51,23],[3,36,12,8,37,13],[2,116,92,2,117,93],[6,58,36,2,59,37],[4,46,20,6,47,21],[7,42,14,4,43,15],[4,133,107],[8,59,37,1,60,38],[8,44,20,4,45,21],[12,33,11,4,34,12],[3,145,115,1,146,116],[4,64,40,5,65,41],[11,36,16,5,37,17],[11,36,12,5,37,13],[5,109,87,1,110,88],[5,65,41,5,66,42],[5,54,24,7,55,25],[11,36,12],[5,122,98,1,123,99],[7,73,45,3,74,46],[15,43,19,2,44,20],[3,45,15,13,46,16],[1,135,107,5,136,108],[10,74,46,1,75,47],[1,50,22,15,51,23],[2,42,14,17,43,15],[5,150,120,1,151,121],[9,69,43,4,70,44],[17,50,22,1,51,23],[2,42,14,19,43,15],[3,141,113,4,142,114],[3,70,44,11,71,45],[17,47,21,4,48,22],[9,39,13,16,40,14],[3,135,107,5,136,108],[3,67,41,13,68,42],[15,54,24,5,55,25],[15,43,15,10,44,16],[4,144,116,4,145,117],[17,68,42],[17,50,22,6,51,23],[19,46,16,6,47,17],[2,139,111,7,140,112],[17,74,46],[7,54,24,16,55,25],[34,37,13],[4,151,121,5,152,122],[4,75,47,14,76,48],[11,54,24,14,55,25],[16,45,15,14,46,16],[6,147,117,4,148,118],[6,73,45,14,74,46],[11,54,24,16,55,25],[30,46,16,2,47,17],[8,132,106,4,133,107],[8,75,47,13,76,48],[7,54,24,22,55,25],[22,45,15,13,46,16],[10,142,114,2,143,115],[19,74,46,4,75,47],[28,50,22,6,51,23],[33,46,16,4,47,17],[8,152,122,4,153,123],[22,73,45,3,74,46],[8,53,23,26,54,24],[12,45,15,28,46,16],[3,147,117,10,148,118],[3,73,45,23,74,46],[4,54,24,31,55,25],[11,45,15,31,46,16],[7,146,116,7,147,117],[21,73,45,7,74,46],[1,53,23,37,54,24],[19,45,15,26,46,16],[5,145,115,10,146,116],[19,75,47,10,76,48],[15,54,24,25,55,25],[23,45,15,25,46,16],[13,145,115,3,146,116],[2,74,46,29,75,47],[42,54,24,1,55,25],[23,45,15,28,46,16],[17,145,115],[10,74,46,23,75,47],[10,54,24,35,55,25],[19,45,15,35,46,16],[17,145,115,1,146,116],[14,74,46,21,75,47],[29,54,24,19,55,25],[11,45,15,46,46,16],[13,145,115,6,146,116],[14,74,46,23,75,47],[44,54,24,7,55,25],[59,46,16,1,47,17],[12,151,121,7,152,122],[12,75,47,26,76,48],[39,54,24,14,55,25],[22,45,15,41,46,16],[6,151,121,14,152,122],[6,75,47,34,76,48],[46,54,24,10,55,25],[2,45,15,64,46,16],[17,152,122,4,153,123],[29,74,46,14,75,47],[49,54,24,10,55,25],[24,45,15,46,46,16],[4,152,122,18,153,123],[13,74,46,32,75,47],[48,54,24,14,55,25],[42,45,15,32,46,16],[20,147,117,4,148,118],[40,75,47,7,76,48],[43,54,24,22,55,25],[10,45,15,67,46,16],[19,148,118,6,149,119],[18,75,47,31,76,48],[34,54,24,34,55,25],[20,45,15,61,46,16]],c.getRSBlocks=function(t,e){var r=c.getRsBlockTable(t,e);if(void 0==r)throw new Error("bad rs block @ typeNumber:"+t+"/errorCorrectLevel:"+e);for(var n=r.length/3,o=new Array,i=0;i<n;i++)for(var a=r[3*i+0],s=r[3*i+1],u=r[3*i+2],l=0;l<a;l++)o.push(new c(s,u));return o},c.getRsBlockTable=function(t,e){switch(e){case n.L:return c.RS_BLOCK_TABLE[4*(t-1)+0];case n.M:return c.RS_BLOCK_TABLE[4*(t-1)+1];case n.Q:return c.RS_BLOCK_TABLE[4*(t-1)+2];case n.H:return c.RS_BLOCK_TABLE[4*(t-1)+3];default:return}},f.prototype={get:function(t){var e=Math.floor(t/8);return 1==(this.buffer[e]>>>7-t%8&1)},put:function(t,e){for(var r=0;r<e;r++)this.putBit(1==(t>>>e-r-1&1))},getLengthInBits:function(){return this.length},putBit:function(t){var e=Math.floor(this.length/8);this.buffer.length<=e&&this.buffer.push(0),t&&(this.buffer[e]|=128>>>this.length%8),this.length++}},i={errorCorrectLevel:n,defaults:{size:354,margin:0,backgroundColor:"#FFFFFF",foregroundColor:"#000000",fileType:"png",errorCorrectLevel:n.H,typeNumber:-1},getModules:function(t){t=(0,o.default)((0,o.default)({},this.defaults),t);var r=new e(t.typeNumber,t.errorCorrectLevel);return r.addData(function(t){for(var e,r="",n=0;n<t.length;n++)e=t.charCodeAt(n),e>=1&&e<=127?r+=t.charAt(n):e>2047?(r+=String.fromCharCode(224|e>>12&15),r+=String.fromCharCode(128|e>>6&63),r+=String.fromCharCode(128|e>>0&63)):(r+=String.fromCharCode(192|e>>6&31),r+=String.fromCharCode(128|e>>0&63));return r}(t.text)),r.make(),r.modules},make:function(t,e){var r=this;return new Promise((function(n,i){if(t=(0,o.default)((0,o.default)({},r.defaults),t),!t.canvasId)throw new Error("uQRCode: Please set canvasId!");var a=r.getModules(t),s=(t.size-2*t.margin)/a.length,u=s,l=Date.now(),h=uni.createCanvasContext(t.canvasId,e);h.setFillStyle(t.backgroundColor),h.fillRect(0,0,t.size,t.size);for(var c=0;c<a.length;c++)for(var f=0;f<a.length;f++){var d=Math.round(f*s)+t.margin,g=Math.round(c*u)+t.margin,v=Math.ceil((f+1)*s)-Math.floor(f*s),m=Math.ceil((c+1)*s)-Math.floor(c*s),p=a[c][f]?t.foregroundColor:t.backgroundColor;h.setFillStyle(p),h.fillRect(d,g,v,m)}var w=t.drawDelay?t.drawDelay:2*t.size;setTimeout((function(){h.draw(!1,(function(){var r=Date.now()-l,o=t.toFileDelay?t.toFileDelay:r+2*t.size+2*a.length;setTimeout((function(){uni.canvasToTempFilePath({canvasId:t.canvasId,fileType:t.fileType,width:t.size,height:t.size,destWidth:t.size,destHeight:t.size,success:function(t){n(Object.assign(t,{time:Date.now()-l}))},fail:function(t){i(t)}},e)}),o)}))}),w)}))}}})();var a=i;e.default=a},ca72:function(t,e,r){var n=r("df63");n.__esModule&&(n=n.default),"string"===typeof n&&(n=[[t.i,n,""]]),n.locals&&(t.exports=n.locals);var o=r("4f06").default;o("59b2c422",n,!0,{sourceMap:!1,shadowMode:!1})},df63:function(t,e,r){var n=r("24fb");e=n(!1),e.push([t.i,".uqrcode-view[data-v-6cb5cd74]{\ndisplay:flex;box-sizing:border-box;\nflex-direction:column}.uqrcode-view-row[data-v-6cb5cd74]{\ndisplay:flex;box-sizing:border-box;\nflex-direction:row}.uqrcode-view-col[data-v-6cb5cd74]{\ndisplay:flex;box-sizing:border-box\n}",""]),t.exports=e}}]);