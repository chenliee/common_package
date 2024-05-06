import 'dart:math';

import 'package:flutter/material.dart';

class BottomClipper extends CustomClipper<Path> {
  ///底下裁剪
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 50.0);
    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEdnPoint = Offset(size.width, size.height - 50.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEdnPoint.dx, firstEdnPoint.dy);
    path.lineTo(size.width, size.height - 50.0);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RightTopClipper extends CustomClipper<Path> {
  ///右上凸起
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    var firstControlPoint = Offset(size.width * 0.8, size.height * 0.2);
    var firstEdnPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEdnPoint.dx, firstEdnPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class HorizontalShape extends ShapeBorder {
  ///水平裁剪
  final double circleSize;
  final double topMargin;
  final double dashWidth = 3;
  final double dashGap = 7;
  final double dashLinePadding = 6;
  final Color dashColor;
  final BorderSide side;
  final Radius radius;

  const HorizontalShape(
    this.radius, {
    this.circleSize = 30,
    this.dashColor = const Color(0xffaaaaaa),
    required this.topMargin,
    this.side = BorderSide.none,
  });
  _formHoldLeft(Path path, Rect rect) {
    path.addArc(
        Rect.fromCenter(
          center: Offset(topMargin, 0),
          width: circleSize,
          height: circleSize,
        ),
        0,
        pi);
  }

  _formHoldRight(Path path, Rect rect) {
    path.addArc(
        Rect.fromCenter(
          center: Offset(topMargin, rect.height),
          width: circleSize,
          height: circleSize,
        ),
        pi,
        pi);
  }

  @override
  // TODO: implement dimensions
  EdgeInsetsGeometry get dimensions => throw UnimplementedError();

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getInnerPath
    throw UnimplementedError();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getOuterPath
    var path = Path();
    path.addRRect(RRect.fromRectAndRadius(rect, radius));
    _formHoldLeft(path, rect);
    _formHoldRight(path, rect);
    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // TODO: implement paint
    var paint = Paint()
      ..color = dashColor
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round;

    _drawDashLine(canvas, Offset(topMargin, circleSize / 2), rect.height / 16,
        rect.height - circleSize, paint);
  }

  _drawDashLine(
      Canvas canvas, Offset start, double count, double length, Paint paint) {
    var step = length / count / 2;
    for (int i = 0; i < count; i++) {
      var offset = start + Offset(0, 2 * step * i);
      canvas.drawLine(offset, offset + Offset(0, step), paint);
    }
  }

  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    throw UnimplementedError();
  }
}

class VerticalShape extends ShapeBorder {
  ///垂直裁剪
  final double circleSize;
  final double topMargin;
  final double dashWidth = 3;
  final double dashGap = 7;
  final double dashLinePadding = 6;
  final Color dashColor;
  final Radius radius;

  const VerticalShape(
    this.radius, {
    this.circleSize = 30,
    this.dashColor = const Color(0xffaaaaaa),
    required this.topMargin,
  });
  _formHoldLeft(Path path, Rect rect) {
    path.addArc(
        Rect.fromCenter(
          center: Offset(0, topMargin),
          width: circleSize,
          height: circleSize,
        ),
        pi * 3 / 2,
        pi);
  }

  _formHoldRight(Path path, Rect rect) {
    path.addArc(
        Rect.fromCenter(
          center: Offset(rect.width, topMargin),
          width: circleSize,
          height: circleSize,
        ),
        pi / 2,
        pi);
  }

  @override
  // TODO: implement dimensions
  EdgeInsetsGeometry get dimensions => throw UnimplementedError();

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getInnerPath
    throw UnimplementedError();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getOuterPath

    var path = Path();
    path.addRRect(RRect.fromRectAndRadius(rect, radius));

    _formHoldLeft(path, rect);
    _formHoldRight(path, rect);
    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // TODO: implement paint
    var paint = Paint()
      ..color = dashColor
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round;

    _drawDashLine(
        canvas,
        Offset(circleSize / 2 + dashLinePadding, topMargin),
        Offset(rect.width - circleSize / 2 - dashLinePadding, topMargin),
        paint);
  }

  _drawDashLine(Canvas canvas, Offset start, Offset end, Paint paint) {
    double currentLength = start.dx;
    while (currentLength <= end.dx) {
      Offset lineStart = Offset(currentLength, start.dy);
      Offset lineEnd = Offset(currentLength + dashWidth, start.dy);
      canvas.drawLine(lineStart, lineEnd, paint);
      currentLength += dashGap;
    }
  }

  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    throw UnimplementedError();
  }
}

class HollowText extends StatelessWidget {
  final String text; //内容
  final double size; //字体大小
  final Color hollowColor; //空心颜色
  final double strokeWidth; //描边宽度
  final Color strokeColor; //描边颜色

  const HollowText({
    Key? key,
    required this.text,
    this.size = 19,
    this.hollowColor = Colors.white,
    this.strokeColor = Colors.red,
    this.strokeWidth = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: size,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: size,
            color: hollowColor,
          ),
        )
      ],
    );
  }
}
