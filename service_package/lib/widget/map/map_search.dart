// import 'package:amap_map_fluttify/amap_map_fluttify.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// import 'city/city.dart';
// import 'city/utils.dart';
//
// class MapSearch extends StatefulWidget {
//   final String city;
//   const MapSearch({Key? key, required this.city}) : super(key: key);
//
//   @override
//   State<MapSearch> createState() => _MapSearchState();
// }
//
// class _MapSearchState extends State<MapSearch> {
//   final FocusNode _focusNode = FocusNode();
//   final TextEditingController _textEditingController = TextEditingController();
//   String? city;
//   late final cities;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setState(() {
//       city = widget.city;
//       cities = CitiesUtils.getAllCitiesByMeta(
//         provincesData,
//         citiesData,
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Row(
//           children: [
//             Expanded(
//               child: Container(
//                 height: 35,
//                 margin: const EdgeInsets.only(right: 15),
//                 decoration: BoxDecoration(
//                     color: const Color(0xffe7e7e7),
//                     borderRadius: BorderRadius.circular(25)),
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                 child: TextField(
//                   focusNode: _focusNode,
//                   controller: _textEditingController,
//                   textInputAction: TextInputAction.search,
//                   onEditingComplete: () async {},
//                   maxLines: 1,
//                   decoration: const InputDecoration(
//                       contentPadding: EdgeInsets.symmetric(),
//                       hintText: '输入城市名或拼音',
//                       hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
//                       prefixIcon: Icon(
//                         Icons.search,
//                         color: Colors.grey,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(15)),
//                         borderSide: BorderSide.none,
//                       )),
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   Navigator.of(context).pop();
//                 });
//               },
//               child: const Text(
//                 '取消',
//                 style: TextStyle(color: Colors.blue, fontSize: 15),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text('当前定位'),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Row(
//                   children: [
//                     const Icon(
//                       CupertinoIcons.location_fill,
//                       color: Colors.blue,
//                       size: 15,
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     GestureDetector(
//                       onTap: () => Navigator.of(context).pop(city),
//                       child: Text(
//                         city!,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.w600, fontSize: 18),
//                       ),
//                     ),
//                     const Spacer(),
//                     GestureDetector(
//                       onTap: () async {
//                         if (await Permission.location
//                             .request()
//                             .then((it) => it.isGranted)) {
//                           setState(() {
//                             city = '定位中';
//                           });
//                           final location =
//                               await AmapLocation.instance.fetchLocation();
//                           setState(() {
//                             city = location.city!;
//                           });
//                         }
//                       },
//                       child: const Text(
//                         '重新定位',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             color: const Color(0xfff4f4f4),
//             height: 10,
//           ),
//           Expanded(
//             child: CitiesSelector(
//               hotCities: [
//                 HotCity(id: '0', name: '北京'),
//                 HotCity(id: '1', name: '沈阳'),
//                 HotCity(id: '2', name: '天津'),
//               ],
//               cities: cities,
//               onSelected: (String value) => Navigator.pop(context, value),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
