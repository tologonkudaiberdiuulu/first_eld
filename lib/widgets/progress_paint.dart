import 'package:flutter/material.dart';

class ProgressPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.02173913, size.height * 0.8734177);
    path_0.cubicTo(
        size.width * 0.02173913,
        size.height * 0.6518418,
        size.width * 0.07212717,
        size.height * 0.4393462,
        size.width * 0.1618185,
        size.height * 0.2826703);
    path_0.cubicTo(
        size.width * 0.2515098,
        size.height * 0.1259943,
        size.width * 0.3731558,
        size.height * 0.03797468,
        size.width * 0.5000000,
        size.height * 0.03797468);
    path_0.cubicTo(
        size.width * 0.6268442,
        size.height * 0.03797468,
        size.width * 0.7484891,
        size.height * 0.1259943,
        size.width * 0.8381812,
        size.height * 0.2826703);
    path_0.cubicTo(
        size.width * 0.9278732,
        size.height * 0.4393462,
        size.width * 0.9782609,
        size.height * 0.6518418,
        size.width * 0.9782609,
        size.height * 0.8734177);

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04347826;
    paint_0_stroke.color = const Color(0xffE6E8ED).withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    paint_0_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.02173913, size.height * 0.8734177);
    path_1.cubicTo(
        size.width * 0.02173913,
        size.height * 0.7418797,
        size.width * 0.03951993,
        size.height * 0.6121987,
        size.width * 0.07363370,
        size.height * 0.4949329);
    path_1.cubicTo(
        size.width * 0.1077478,
        size.height * 0.3776671,
        size.width * 0.1572312,
        size.height * 0.2761297,
        size.width * 0.2180562,
        size.height * 0.1985848);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04347826;
    paint1Stroke.color = const Color(0xffFBCA00).withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color =
        const Color.fromRGBO(255, 255, 255, 1.0).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2146159, size.height * 0.2041456),
            width: size.width * 0.01941304,
            height: size.height * 0.03391139),
        paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
