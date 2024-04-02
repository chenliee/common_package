import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

class EasyRefreshWidget extends StatelessWidget {
  final Widget contain;
  final Function()? onLoad;
  final Function()? onRefresh;
  final EasyRefreshController? controller;
  final bool infinite;
  final Color? backgroundColor;
  final String? processedText;
  const EasyRefreshWidget(
      {Key? key,
      required this.contain,
      this.onLoad,
      this.onRefresh,
      this.controller,
      this.infinite = true,
      this.backgroundColor,
      this.processedText = '加載成功'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      controller: controller,
      header: ClassicHeader(
        backgroundColor: backgroundColor,
        noMoreText: '沒有更多了',
        processedText: '刷新完成',
        processingText: '刷新中',
        readyText: '準備刷新',
        dragText: '下拉刷新',
        armedText: '釋放刷新',
        failedText: '刷新失敗',
        showMessage: false,
      ),
      footer: ClassicFooter(
          noMoreText: '沒有更多了',
          processedText: processedText,
          processingText: '加載中',
          readyText: '準備加載',
          dragText: '下拉加載',
          armedText: '釋放加載',
          failedText: '加載失敗',
          showMessage: false,
          infiniteOffset: infinite == true ? 70 : null),
      onRefresh: onRefresh,
      onLoad: onLoad,
      child: contain,
    );
  }
}
