import 'dart:ui';

import 'package:flutter/widgets.dart';

/// {@template custom_rect_tween}
/// Linear RectTween with a [Curves.easeOut] curve.
///
/// Less dramatic that the regular [RectTween] used in [Hero] animations.
/// {@endtemplate}
class CustomRectTween extends RectTween {
  Cubic _cubic;

  CustomRectTween({Rect begin, Rect end, Cubic cubic})
      : super(begin: begin, end: end) {
    _cubic = cubic;
  }

//  @override
//  Rect lerp(double t) {
//    final elasticCurveValue = Curves.easeOut.transform(t);
//    return Rect.fromLTWH(
//      lerpDouble(begin.left, end.left, elasticCurveValue),
//      lerpDouble(begin.top, end.top, elasticCurveValue),
//      lerpDouble(begin.right, end.right, elasticCurveValue),
//      lerpDouble(begin.bottom, end.bottom, elasticCurveValue),
//    );
//  }

  @override
  Rect lerp(double t) {
    double height = end.top - begin.top;
    double width = end.left - begin.left;

    double transformedY = _cubic.transform(t);

    double animatedX = begin.left + (t * width);
    double animatedY = begin.top + (transformedY * height);

    return Rect.fromLTWH(animatedX, animatedY, 1, 1);
  }
}