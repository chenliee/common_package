// import 'package:amap_map_fluttify/amap_map_fluttify.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// import 'map_widget.dart';
//
// class MapPicker extends StatefulWidget {
//   final String title;
//   final Color selectColor;
//   final ValueChanged<PoiInfo>? onItemSelected;
//   final LatLng? latLng;
//   const MapPicker({
//     Key? key,
//     this.title = '地圖選擇器',
//     this.selectColor = Colors.blue,
//     this.onItemSelected,
//     this.latLng,
//   }) : super(key: key);
//   @override
//   State<MapPicker> createState() => _MapPickerState();
// }
//
// class _MapPickerState extends State<MapPicker> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         iconTheme: const IconThemeData(
//           color: Colors.black, //修改颜色
//         ),
//         title: Text(
//           widget.title,
//           style: const TextStyle(color: Colors.black),
//         ),
//       ),
//       body: MapWidget(
//         onItemSelected: (poiInfo) => widget.onItemSelected!(poiInfo),
//         requestPermission: () {
//           return Permission.locationWhenInUse
//               .request()
//               .then((it) => it.isGranted);
//         },
//         zoomGesturesEnabled: true,
//         latLng: widget.latLng,
//         poiItemBuilder: (poi, selected) {
//           return ListTile(
//             leading:
//                 selected ? const Icon(Icons.check) : const SizedBox.shrink(),
//             title: Transform(
//               transform: Matrix4.translationValues(-16, 0.0, 0.0),
//               child: Text(
//                 poi.title!,
//                 style: TextStyle(
//                     color: selected ? widget.selectColor : Colors.black),
//               ),
//             ),
//             subtitle: Transform(
//                 transform: Matrix4.translationValues(-16, 0.0, 0.0),
//                 child: Text(poi.address!)),
//             trailing: Text(
//               '${poi.distance!}m',
//               style: const TextStyle(fontSize: 12, color: Colors.grey),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
