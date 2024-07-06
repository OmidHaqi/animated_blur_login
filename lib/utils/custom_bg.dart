import 'dart:ui' as ui; // وارد کردن کتابخانه dart:ui برای عملیات گرافیکی سطح پایین.
import 'package:flutter/material.dart'; 

class CustomBackground extends CustomPainter {

  CustomBackground({
    this.firstColor,
    this.secondColor,
  });

  final Color? firstColor; // رنگ اول برای گرادیانت.
  final Color? secondColor; // رنگ دوم برای گردیانت.

  double width = 0; // متغیری برای ذخیره عرض بوم.
  double height = 0; // متغیری برای ذخیره ارتفاع بوم.

  @override
  void paint(Canvas canvas, Size size) {
    // متدی برای نقاشی پس‌زمینه سفارشی روی بوم.
    width = size.width; // تنظیم عرض بوم.
    final widthItem = size.width / 3; // تقسیم عرض به سه قسمت.
    height = size.height; // تنظیم ارتفاع بوم.
    final paint = Paint(); // ایجاد یک شیء Paint برای تعریف سبک و رنگ.

    paint.style = PaintingStyle.stroke; // تنظیم سبک نقاشی به پر کردن.
    paint.strokeCap = StrokeCap.round; // تنظیم انتهای خط به گرد.
    paint.strokeWidth = 20; // تنظیم عرض خط.
    paint.shader = ui.Gradient.linear(
      // ایجاد یک شیب خطی.
      Offset(size.width / 2, 0), // نقطه شروع شیب.
      Offset(size.width / 2, size.height), // نقطه پایان شیب.
      [
        firstColor ?? Colors.white, // رنگ اول شیب.
        secondColor ?? Colors.black // رنگ دوم شیب.
      ],
    );

    final path = Path(); // ایجاد یک شیء Path برای تعریف شکل.

    // تعریف مسیر با یک سری منحنی‌های بزیه درجه دوم.
    path.moveTo(width * .04, height * 0.45);
    path.quadraticBezierTo(
      widthItem * 0.23, 
      height * 0.58, 
      widthItem * 0.5, 
      height * 0.4,
    );

    path.quadraticBezierTo(
      widthItem * 0.75,
      height * 0.25, 
      widthItem * 0.78, 
      height * 0.3, 
    );

    path.quadraticBezierTo(
      widthItem * 0.8, 
      height * 0.4, 
      widthItem, 
      height * 0.5,
    );

    path.quadraticBezierTo(
      ((widthItem * 2) * 0.75), 
      height * 0.73, 
      widthItem * 2, 
      height * 0.5, 
    );

    path.quadraticBezierTo(
      width * 0.8, 
      height * 0.25, 
      width * .85,
      height * 0.4, 
    );

    path.quadraticBezierTo(
      width * 0.87,
      height * 0.5, 
      width * .92, 
      height * 0.5, 
    );

    path.quadraticBezierTo(
      width * 1, 
      height * 0.5, 
      width * .95, 
      height * 0.35, 
    );

    path.quadraticBezierTo(
      width * 0.9, 
      height * 0.2, 
      width * .8, 
      height * 0.15, 
    );

    path.quadraticBezierTo(
      width * 0.72,
      height * 0.12, 
      widthItem * 2,
      height * 0.2, 
    );

    path.quadraticBezierTo(
      widthItem * 1.9, 
      height * 0.24, 
      widthItem * 1.86, 
      height * 0.28, 
    );

    path.quadraticBezierTo(
      widthItem * 1.5,
      height * 0.6, 
      widthItem * 1.14, 
      height * 0.28, 
    );

    path.quadraticBezierTo(
      widthItem * 1.1,
      height * 0.24, 
      widthItem, 
      height * 0.2,
    );

    path.quadraticBezierTo(
      widthItem * 0.7,
      height * 0.1, 
      widthItem * 0.4, 
      height * 0.2,
    );

    path.quadraticBezierTo(
      widthItem * 0.05,
      height * 0.33, 
      width * .04,
      height * 0.45,
    );

    // رسم سایه برای مسیر.
    // canvas.drawShadow(path, AppColors.textColor, 10, false);

    // رسم مسیر روی بوم با استفاده از رنگ تنظیم شده.
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
  // متدی برای تعیین اینکه آیا نقاش باید دوباره نقاشی کند. همیشه true برمی‌گرداند.
}
