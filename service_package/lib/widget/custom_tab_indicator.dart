import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  /// Create an underline style selected tab indicator.
  ///
  /// The [borderSide] and [insets] arguments must not be null.
  const CustomTabIndicator(
      {this.borderSide = const BorderSide(width: 2.0, color: Colors.white),
      this.insets = EdgeInsets.zero,
      this.customWidth})
      : assert(borderSide != null),
        assert(insets != null);

  ///自定义宽度
  final double? customWidth;

  /// The color and weight of the horizontal line drawn below the selected tab.
  final BorderSide? borderSide;

  /// Locates the selected tab's underline relative to the tab's boundary.
  ///
  /// The [TabBar.indicatorSize] property can be used to define the tab
  /// indicator's bounds in terms of its (centered) tab widget with
  /// [TabBarIndicatorSize.label], or the entire tab with
  /// [TabBarIndicatorSize.tab].
  final EdgeInsetsGeometry? insets;

  @override
  Decoration? lerpFrom(Decoration? a, double t) {
    if (a is UnderlineTabIndicator) {
      return UnderlineTabIndicator(
        borderSide: BorderSide.lerp(a.borderSide, borderSide!, t),
        insets: EdgeInsetsGeometry.lerp(a.insets, insets, t)!,
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  Decoration? lerpTo(Decoration? b, double t) {
    if (b is UnderlineTabIndicator) {
      return UnderlineTabIndicator(
        borderSide: BorderSide.lerp(borderSide!, b.borderSide, t),
        insets: EdgeInsetsGeometry.lerp(insets, b.insets, t)!,
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _WDUnderlinePainter(this, onChanged);
  }

  Rect _indicatorRectFor(Rect? rect, TextDirection? textDirection) {
    assert(rect != null);
    assert(textDirection != null);
    final Rect indicator = insets!.resolve(textDirection).deflateRect(rect!);

    if (customWidth != null) {
      ///修改自定义宽度
      double w = (indicator.left + indicator.right) / 2;
      return Rect.fromLTWH(
          w - customWidth! / 2,
          indicator.bottom - borderSide!.width,
          customWidth!,
          borderSide!.width);
    } else {
      return Rect.fromLTWH(
        indicator.left,
        indicator.bottom - borderSide!.width,
        indicator.width,
        borderSide!.width,
      );
    }
  }

  @override
  Path getClipPath(Rect rect, TextDirection textDirection) {
    return Path()..addRect(_indicatorRectFor(rect, textDirection));
  }
}

class _WDUnderlinePainter extends BoxPainter {
  _WDUnderlinePainter(this.decoration, VoidCallback? onChanged)
      : assert(decoration != null),
        super(onChanged);

  final CustomTabIndicator? decoration;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration? configuration) {
    assert(configuration != null);
    assert(configuration?.size != null);
    final Rect rect = offset & configuration!.size!;
    final TextDirection textDirection = configuration.textDirection!;
    final Rect indicator = decoration!
        ._indicatorRectFor(rect, textDirection)
        .deflate(decoration!.borderSide!.width / 2.0);
    final Paint paint = decoration!.borderSide!.toPaint()
      ..strokeCap = StrokeCap.square;
    canvas.drawLine(indicator.bottomLeft, indicator.bottomRight, paint);
  }
}
