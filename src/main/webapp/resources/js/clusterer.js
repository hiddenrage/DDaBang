(function(n){function h(a){return a instanceof daum.maps.LatLng?a.toCoords():a}function o(a){if(a instanceof daum.maps.LatLngBounds){var b=a.getSouthWest(),a=a.getNorthEast();return new daum.maps.CoordsBounds(h(b),h(a))}return a}function j(a){this.hoverable=void 0===a.hoverable||a.hoverable;this.clickable=void 0===a.clickable||a.clickable;this.disableClickZoom=a.disableClickZoom||i;this.gridSize=a.gridSize||60;this.minClusterSize=a.minClusterSize||2;this.averageCenter=a.averageCenter||i;this.minLevel=
a.minLevel||0;this.styles=a.styles||j.DEFAULT_STYLES;this.texts=a.texts||j.DEFAULT_TEXTS;this.calculator=a.calculator||j.DEFAULT_CALCULATOR}function g(a){this._clusterer=a;this._bounds=l;this._markers=[];var b=this._map=a.getMap();this._proj=b.getProjection();this._model=a.getModel();this._hoverable=this._model.hoverable;this._clickable=this._model.clickable;var c=this._content=document.createElement("div");this._clickable&&(c.style.cursor="pointer");this._clusterMarker=new daum.maps.CustomOverlay({map:b,
clickable:this._clickable});a=[];this._hoverable&&(a=["mouseout","mouseover"]);this._clickable&&(a=a.concat(["click","dblclick","contextmenu"]));a.map(function(a){return m.listen(c,a,this._eventHandler(a),this)},this);a.push(m.listen(c,"mousedown",function(a){a.preventDefault&&a.preventDefault();a.returnValue=i}));this._eventIds=a}function e(a){daum.maps.AbstractOverlay.call(this);a=a||{};this._model=new j(a);this._clusters=[];this._markers=a.markers||[];(a=a.map)&&this.setMap(a)}Function.prototype.bind||
(Function.prototype.bind=function(a){if("function"!==typeof this)throw new TypeError("Error");var b=Array.prototype.slice.call(arguments,1),c=this,d=function(){},f=function(){return c.apply(this instanceof d?this:a,b.concat(Array.prototype.slice.call(arguments)))};d.prototype=this.prototype;f.prototype=new d;return f});Array.prototype.indexOf||(Array.prototype.indexOf=function(a,b){var c;if(this==null)throw new TypeError('"this" is null or not defined');var d=Object(this),f=d.length>>>0;if(f===0)return-1;
c=+b||0;Math.abs(c)===Infinity&&(c=0);if(c>=f)return-1;for(c=Math.max(c>=0?c:f-Math.abs(c),0);c<f;){if(c in d&&d[c]===a)return c;c++}return-1});Array.prototype.map||(Array.prototype.map=function(a,b){var c,d,f;if(this==null)throw new TypeError(" this is null or not defined");var e=Object(this),g=e.length>>>0;if(typeof a!=="function")throw new TypeError(a+" is not a function");arguments.length>1&&(c=b);d=Array(g);for(f=0;f<g;){var h;if(f in e){h=e[f];h=a.call(c,h,f,e);d[f]=h}f++}return d});var k;k=
n;k=k.daum=k.daum||{};k=k.maps=k.maps||{};var p=!!k.apikey,q=Math.abs,i=!1,l=null,r=("https:"==n.location.protocol?"https:":"http:")+(daum.maps.TUNNELING?"//ssl.daumcdn.net/":"//")+"i1.daumcdn.net/localimg/localimages/07/mapjsapi/cluster.png",m={_POOL:[],_proxy:function(){function a(b){b=b||n.event;if(!b.target)b.target=b.srcElement;return a.func.call(a.scope||a.target,b)}return a},listen:function(a,b,c,d){var f=m._proxy();f.target=a;f.type=b;f.func=c;f.scope=d;a.addEventListener?a.addEventListener(b,
f,false):a.attachEvent("on"+b,f);a=m._POOL.length;m._POOL[a]=f;return a},unlisten:function(a){var b=m._POOL[a];if(b){b.target.removeEventListener?b.target.removeEventListener(b.type,b,false):b.target.detachEvent("on"+b.type,b);delete m._POOL[a]}}};j.prototype.getExtendedBounds=function(a,b){var c=a.pointFromCoords(b.getSouthWest()),d=a.pointFromCoords(b.getNorthEast()),f=this.gridSize;c.x=c.x-f;c.y=c.y+f;d.x=d.x+f;d.y=d.y-f;return new daum.maps.CoordsBounds(h(a.coordsFromPoint(c)),h(a.coordsFromPoint(d)))};
j.prototype._getIndexFromCalc=function(a){var b=this.calculator;if(typeof b==="function")return b(a);for(var c=0,d=null;d=b[c];){if(a<d)break;c++}return c};j.prototype.getStyle=function(a){var a=this._getIndexFromCalc(a),b=this.styles;return b[Math.min(a,b.length-1)]};j.prototype.getText=function(a){var b=this.texts;if(typeof b==="function")return b(a);a=this._getIndexFromCalc(a);return b[Math.min(a,b.length-1)]};j.DEFAULT_STYLES=[52,56,66,78,90].map(function(a,b){return{width:a+"px",height:a+"px",
lineHeight:b+a+"px",fontSize:b*2+14+"px",background:"url("+r+")",backgroundPosition:"0 "+-90*b+"px",textAlign:"center",fontWeight:"bold"}});j.DEFAULT_TEXTS=function(a){return a};j.DEFAULT_CALCULATOR=function(a){for(var b=-1;a!=0;){a=a/10|0;b++}return b};g.ALIAS={mouseout:"out",mouseover:"over",contextmenu:"rightclick"};g.prototype._eventHandler=function(a){var b="cluster"+(g.ALIAS[a]||a);return function(){a==="click"&&this._clusterClick();daum.maps.event.trigger(this._clusterer,b,this)}};g.prototype._clusterClick=
function(){if(!this._model.disableClickZoom){var a=this._map,b=h(a.getCenter()),c=o(a.getBounds()),d=h(this.getCenter()),f=o(this.getBounds()),e=c.getNorthEast().getY()-b.getY(),g=f.getNorthEast().getY()-d.getY(),b=c.getNorthEast().getX()-b.getX(),d=f.getNorthEast().getX()-d.getX();if(e>>1>g&&b>>1>d)a.setBounds(this.getBounds(),0);else{a.setLevel(a.getLevel()-1);a.setCenter(this.getCenter())}}};g.prototype._isAlreadyAdded=function(a){return this._markers.indexOf(a)!=-1};g.prototype.isInBounds=function(a){return this._bounds.contain(h(a.getPosition()))};
g.prototype.add=function(a){if(!this._isAlreadyAdded(a)){var b=this._markers,c=h(a.getPosition());if(this._center){if(this._model.averageCenter){var d=b.length+1;this._center=new daum.maps.Coords((this._center.getX()*(d-1)+c.getX())/d,(this._center.getY()*(d-1)+c.getY())/d);this._updateBounds(this._center)}}else{this._center=c;this._updateBounds(c)}a.isAdded=true;b.push(a);c=b.length;d=this._model.minClusterSize;if(c<d)a.setMap(this._map);else if(c==d)for(a=0;c=b[a];a++)c.setMap(l);else a.setMap(l);
this._updateIcon()}};g.prototype._updateBounds=function(a){this._bounds=this._model.getExtendedBounds(this._proj,new daum.maps.CoordsBounds(a,a))};g.prototype._updateIcon=function(){var a=this._map,b=this._model,c=this._markers,d=this._clusterMarker,f=a.getLevel(),e=b.minLevel,g=c.length;if(e&&f<e)for(b=0;d=c[b];b++)d.setMap(a);else if(g<b.minClusterSize)d.setVisible(i);else{d.setPosition(this._center);d.setVisible(true);var a=b.getStyle(g),h;for(h in a)this._content.style[h]=a[h];d.setContent(this._content);
this._content.innerHTML=b.getText(g)}};g.prototype.remove=function(){for(var a=l;a=this._eventIds.pop();)m.unlisten(a);this._clusterMarker.setMap(l);this._markers.length=0;delete this._markers};g.prototype.getCenter=function(){var a;a=this._center;a=p?a.toLatLng():a;return a};g.prototype.getBounds=function(){var a;a=this._bounds;a=p?new daum.maps.LatLngBounds(a.getSouthWest().toLatLng(),a.getNorthEast().toLatLng()):a;return a};g.prototype.getSize=function(){return this._markers.length};g.prototype.getMarkers=
function(){return this._markers};g.prototype.getClusterMarker=function(){return this._clusterMarker};e.prototype=new daum.maps.AbstractOverlay;e.prototype.onAdd=function(){var a=this.getMap();daum.maps.event.addListener(a,"zoom_changed",this._resetViewport.bind(this));daum.maps.event.addListener(a,"idle",this._createClusters.bind(this));this._createClusters()};e.prototype._indexOfMarkers=function(a){return this._markers.indexOf(a)};e.prototype.addMarker=function(a,b){if(this._indexOfMarkers(a)>=0)return i;
a.isAdded=i;a instanceof daum.maps.Marker&&a.getDraggable()&&daum.maps.event.addListener(a,"dragend",function(){a.isAdded=i;this.redraw()}.bind(this));this._markers.push(a);b||this._createClusters()};e.prototype.addMarkers=function(a,b){for(var c=0,d;d=a[c];c++)this.addMarker(d,true);b||this._createClusters()};e.prototype._removeMarker=function(a){var b=this._indexOfMarkers(a);if(b<0)return i;a.setMap(l);this._markers.splice(b,1)[0].isAdded=i;return true};e.prototype.removeMarker=function(a,b){var c=
this._removeMarker(a,true);!b&&c&&this.redraw()};e.prototype.removeMarkers=function(a,b){for(var c=i,d=0,e;e=a[d];d++)c=this._removeMarker(e,true)||c;!b&&c&&this.redraw()};e.prototype.redraw=function(){this._resetViewport();this._createClusters()};e.prototype.clear=function(){this._resetViewport(true);this._markers=[]};e.prototype._resetViewport=function(a){for(var b=0,c;c=this._clusters[b];b++)c.remove();for(b=0;c=this._markers[b];b++){c.isAdded=i;a&&c.setMap(l)}this._clusters.length=0;this._clusters=
[]};e.prototype._createClusters=function(){if(this.getMap()){for(var a=this.getProjection(),b=this.getMap(),b=o(b.getBounds()),a=this._model.getExtendedBounds(a,b),b=0,c;c=this._markers[b];b++)!c.isAdded&&a.contain(h(c.getPosition()))&&this._addToClosestCluster(c);daum.maps.event.trigger(this,"clustered",this._clusters)}};e.prototype._addToClosestCluster=function(a){for(var b=h(a.getPosition()),c=l,d=Infinity,e=0,j;j=this._clusters[e];e++){var i=h(j.getCenter()),i=q(b.getX()-i.getX())+q(b.getY()-
i.getY());if(d>i){d=i;c=j}}if(c&&c.isInBounds(a))c.add(a);else{b=new g(this);b.add(a);this._clusters.push(b)}};e.prototype.getModel=function(){return this._model};e.prototype.getGridSize=function(){return this._model.gridSize};e.prototype.setGridSize=function(a){this._model.gridSize=a};e.prototype.getMinClusterSize=function(){return this._model.minClusterSize};e.prototype.setMinClusterSize=function(a){this._model.minClusterSize=a};e.prototype.getAverageCenter=function(){return this._model.averageCenter};
e.prototype.setAverageCenter=function(a){this._model.averageCenter=a};e.prototype.getMinLevel=function(){return this._model.minLevel};e.prototype.setMinLevel=function(a){this._model.minLevel=a};e.prototype.getStyles=function(){return this._model.styles};e.prototype.setStyles=function(a){this._model.styles=a};e.prototype.getTexts=function(){return this._model.texts};e.prototype.setTexts=function(a){this._model.texts=a};e.prototype.getCalculator=function(){return this._model.calculator};e.prototype.setCalculator=
function(a){this._model.calculator=a};k.MarkerClusterer=e})(window);
