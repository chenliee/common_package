// import 'dart:async';
//
// import 'package:amap_map_fluttify/amap_map_fluttify.dart';
// import 'package:easy_refresh/easy_refresh.dart';
// import 'package:flutter/material.dart';
//
// import 'map_search.dart';
//
// typedef RequestPermission = Future<bool> Function();
// typedef PoiItemBuilder = Widget Function(Poi poi, bool selected);
//
// class MapWidget extends StatefulWidget {
//   final RequestPermission requestPermission;
//   final bool showCompass;
//   final PoiItemBuilder poiItemBuilder;
//   final double zoomLevel;
//   final bool zoomGesturesEnabled;
//   final bool showZoomControl;
//   final Widget? centerIndicator;
//   final bool enableLoadMore;
//   final ValueChanged<PoiInfo>? onItemSelected;
//   final LatLng? latLng;
//
//   const MapWidget({
//     Key? key,
//     required this.requestPermission,
//     required this.poiItemBuilder,
//     this.zoomLevel = 18.0,
//     this.zoomGesturesEnabled = false,
//     this.showZoomControl = false,
//     this.centerIndicator,
//     this.enableLoadMore = true,
//     this.onItemSelected,
//     this.showCompass = false,
//     this.latLng,
//   })  : assert(zoomLevel >= 3 && zoomLevel <= 19),
//         super(key: key);
//   @override
//   State<MapWidget> createState() => _MapWidgetState();
// }
//
// class _MapWidgetState extends State<MapWidget>
//     with SingleTickerProviderStateMixin, _BLoCMixin, _AnimationMixin {
//   // 地图控制器
//   late AmapController _controller;
//   ScrollController scrollController = ScrollController();
//   // 是否用户手势移动地图
//   bool _moveByUser = true;
//   // 当前请求到的poi列表
//   List<PoiInfo> _poiInfoList = [];
//   // 当前地图中心点
//   late LatLng _currentCenterCoordinate;
//   int _page = 1;
//   final TextEditingController _textEditingController = TextEditingController();
//   bool isSearch = false;
//   List<PoiInfo> _searchList = [];
//   final FocusNode _focusNode = FocusNode();
//   String? city;
//
//   setCity() async {
//     if (await widget.requestPermission()) {
//       final location = await AmapLocation.instance.fetchLocation();
//       setState(() {
//         city = location.city!;
//       });
//     }
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setCity();
//     _focusNode.addListener(() {
//       if (!_focusNode.hasFocus) {
//       } else {
//         setState(() {
//           isSearch = !isSearch;
//         });
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//           width: double.infinity,
//           color: Colors.white,
//           child: Row(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   FocusScope.of(context).requestFocus(FocusNode());
//                   Navigator.of(context)
//                       .push(MaterialPageRoute(builder: (context) {
//                     return MapSearch(
//                       city: city!,
//                     );
//                   })).then((value) {
//                     if (value != null) {
//                       setState(() {
//                         city = value;
//                       });
//                     }
//                   });
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 5),
//                   child: RichText(
//                     text: TextSpan(children: [
//                       TextSpan(
//                           text: city ?? '定位中',
//                           style: const TextStyle(color: Colors.black)),
//                       const WidgetSpan(
//                           alignment: PlaceholderAlignment.middle,
//                           child: Icon(Icons.keyboard_arrow_down))
//                     ]),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: 35,
//                   margin: const EdgeInsets.only(right: 15),
//                   decoration: BoxDecoration(
//                       color: const Color(0xffe7e7e7),
//                       borderRadius: BorderRadius.circular(25)),
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                   child: TextField(
//                     focusNode: _focusNode,
//                     textInputAction: TextInputAction.search,
//                     controller: _textEditingController,
//                     onEditingComplete: () async {
//                       FocusScope.of(context).requestFocus(FocusNode());
//                       await _searchKeyword();
//                     },
//                     maxLines: 1,
//                     decoration: const InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(),
//                         hintText: '输入搜索的地址',
//                         hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
//                         prefixIcon: Icon(
//                           Icons.search,
//                           color: Colors.grey,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(15)),
//                           borderSide: BorderSide.none,
//                         )),
//                   ),
//                 ),
//               ),
//               if (isSearch)
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       FocusScope.of(context).requestFocus(FocusNode());
//                       isSearch = false;
//                       _searchList.clear();
//                       _textEditingController.clear();
//                     });
//                   },
//                   child: const Text('取消'),
//                 ),
//             ],
//           ),
//         ),
//         if (isSearch)
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ListView(
//                 children: _searchList.map((e) {
//                   return ListTile(
//                     title: Transform(
//                       transform: Matrix4.translationValues(-16, 0.0, 0.0),
//                       child: Text(
//                         e.poi.title!,
//                       ),
//                     ),
//                     subtitle: Transform(
//                         transform: Matrix4.translationValues(-16, 0.0, 0.0),
//                         child: Text(e.poi.address!)),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ),
//         if (!isSearch)
//           Expanded(
//             flex: 1,
//             child: Stack(
//               children: <Widget>[
//                 AmapView(
//                   showCompass: widget.showCompass,
//                   zoomLevel: widget.zoomLevel,
//                   zoomGesturesEnabled: widget.zoomGesturesEnabled,
//                   showZoomControl: widget.showZoomControl,
//                   onMapMoving: (move) async {},
//                   onMapMoveEnd: (move) async {
//                     if (_moveByUser) {
//                       // 地图移动结束, 显示跳动动画
//                       _jumpController
//                           .forward()
//                           .then((it) => _jumpController.reverse());
//                       _search(move.coordinate!);
//                     }
//                     _moveByUser = true;
//                     // 保存当前地图中心点数据
//                     _currentCenterCoordinate = move.coordinate!;
//                   },
//                   onMapCreated: (controller) async {
//                     _controller = controller;
//                     await _showMyLocation();
//                     print("object11111");
//                     print(widget.latLng);
//                     if (await widget.requestPermission()) {
//                       LatLng? res = await _controller.getLocation();
//                       if (widget.latLng == null) {
//                         _controller.setCenterCoordinate(res!);
//                         _search(res);
//                       } else {
//                         _controller.setCenterCoordinate(widget.latLng!);
//                         _search(widget.latLng!);
//                       }
//                     } else {
//                       debugPrint('权限请求被拒绝!');
//                     }
//                   },
//                 ),
//                 // 中心指示器
//                 Center(
//                   child: StreamBuilder<List<PoiInfo>>(
//                       stream: _poiStream.stream,
//                       builder: (context, snapshot) {
//                         if (snapshot.hasData) {
//                           if (snapshot.data!.isNotEmpty) {
//                             late PoiInfo poiInfo;
//                             for (PoiInfo res in snapshot.data!) {
//                               if (res.selected == true) {
//                                 poiInfo = res;
//                               }
//                             }
//                             return Container(
//                               margin: const EdgeInsets.only(bottom: 110),
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 4, horizontal: 5),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10),
//                                   boxShadow: [
//                                     BoxShadow(
//                                         color: Colors.grey[400]!,
//                                         offset: const Offset(2, 4), // 偏移量
//                                         blurRadius: 2)
//                                   ]),
//                               child: Text('${poiInfo.poi.title}'),
//                             );
//                           }
//                         }
//                         return const SizedBox.shrink();
//                       }),
//                 ),
//                 Center(
//                   child: AnimatedBuilder(
//                     animation: _tween,
//                     builder: (context, child) {
//                       return Transform.translate(
//                         offset: Offset(
//                           _tween.value.dx,
//                           _tween.value.dy - 40 / 2,
//                         ),
//                         child: child,
//                       );
//                     },
//                     child: widget.centerIndicator ??
//                         Icon(
//                           Icons.location_on,
//                           size: 40,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                   ),
//                 ),
//                 // 定位按钮
//                 Positioned(
//                   right: 16.0,
//                   bottom: 16.0,
//                   child: FloatingActionButton(
//                     onPressed: _showMyLocation,
//                     backgroundColor: Colors.white,
//                     mini: true,
//                     child: const Icon(
//                       Icons.gps_fixed,
//                       color: Colors.black54,
//                     ), /*StreamBuilder<bool>(
//                     stream: _onMyLocation.stream,
//                     initialData: true,
//                     builder: (context, snapshot) {
//                       return Icon(
//                         Icons.gps_fixed,
//                         color: snapshot.hasData
//                             ? Theme.of(context).primaryColor
//                             : Colors.black54,
//                       );
//                     },
//                   ),*/
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         if (!isSearch)
//           Expanded(
//             flex: 1,
//             child: StreamBuilder<List<PoiInfo>>(
//               stream: _poiStream.stream,
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   final data = snapshot.data;
//                   return EasyRefresh(
//                     footer: const MaterialFooter(),
//                     onLoad: widget.enableLoadMore ? _handleLoadMore : null,
//                     child: ListView.builder(
//                       padding: EdgeInsets.zero,
//                       controller: scrollController,
//                       shrinkWrap: true,
//                       itemCount: data?.length,
//                       itemBuilder: (context, index) {
//                         final poi = data![index].poi;
//                         final selected = data[index].selected;
//                         return GestureDetector(
//                           onTap: () {
//                             if (widget.onItemSelected != null) {
//                               widget.onItemSelected!(data[index]);
//                               return;
//                             }
//                             // 遍历数据列表, 设置当前被选中的数据项
//                             for (int i = 0; i < data.length; i++) {
//                               data[i].selected = i == index;
//                             }
//                             // 如果索引是0, 说明是当前位置, 更新这个数据
//                             _onMyLocation.add(index == 0);
//                             // 刷新数据
//                             _poiStream.add(data);
//                             // 设置地图中心点
//                             _setCenterCoordinate(poi.latLng!);
//                             // 回调
//                           },
//                           child: widget.poiItemBuilder(poi, selected),
//                         );
//                       },
//                     ),
//                   );
//                 } else {
//                   return const Center(child: CircularProgressIndicator());
//                 }
//               },
//             ),
//           )
//       ],
//     );
//   }
//
//   Future<void> _search(LatLng location) async {
//     final poiList = await AmapSearch.instance.searchAround(location);
//     _poiInfoList = poiList.map((poi) => PoiInfo(poi)).toList();
//     // 默认勾选第一项
//     if (_poiInfoList.isNotEmpty) _poiInfoList[0].selected = true;
//     _poiStream.add(_poiInfoList);
//     // 重置页数
//     _page = 1;
//   }
//
//   Future<void> _searchKeyword() async {
//     final poiList = await AmapSearch.instance
//         .searchKeyword(_textEditingController.text, city: city!);
//     _searchList = poiList.map((poi) => PoiInfo(poi)).toList();
//     setState(() {
//       _searchList = _searchList;
//     });
//   }
//
//   Future<void> _showMyLocation() async {
//     _onMyLocation.add(true);
//     await _controller.showMyLocation(MyLocationOption(
//       strokeColor: Colors.transparent,
//       strokeWidth: 1,
//       fillColor: Colors.blue.withOpacity(0.4),
//     ));
//   }
//
//   Future<void> _setCenterCoordinate(LatLng coordinate) async {
//     await _controller.setCenterCoordinate(coordinate);
//     _moveByUser = false;
//   }
//
//   Future<void> _handleLoadMore() async {
//     final poiList = await AmapSearch.instance.searchAround(
//       _currentCenterCoordinate,
//       page: ++_page,
//     );
//     _poiInfoList.addAll(poiList.map((poi) => PoiInfo(poi)).toList());
//     _poiStream.add(_poiInfoList);
//   }
// }
//
// mixin _BLoCMixin on State<MapWidget> {
//   // poi流
//   final _poiStream = StreamController<List<PoiInfo>>.broadcast();
//   // 是否在我的位置
//   final _onMyLocation = StreamController<bool>.broadcast();
//
//   @override
//   void dispose() {
//     _poiStream.close();
//     _onMyLocation.close();
//     super.dispose();
//   }
// }
//
// mixin _AnimationMixin on SingleTickerProviderStateMixin<MapWidget> {
//   // 动画相关
//   late AnimationController _jumpController;
//   late Animation<Offset> _tween;
//   @override
//   void initState() {
//     super.initState();
//     _jumpController = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300));
//     _tween = Tween(begin: const Offset(0, 0), end: const Offset(0, -15))
//         .animate(
//             CurvedAnimation(parent: _jumpController, curve: Curves.easeInOut));
//   }
//
//   @override
//   void dispose() {
//     _jumpController.dispose();
//     super.dispose();
//   }
// }
//
// class PoiInfo {
//   PoiInfo(this.poi);
//
//   final Poi poi;
//   bool selected = false;
//
//   @override
//   String toString() {
//     return 'PoiInfo{poi: $poi, selected: $selected}';
//   }
// }
