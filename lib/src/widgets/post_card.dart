import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  PostCard({
    Key? key,
    required this.size,
    required this.text,
    required this.option,
    required this.padding,
    required this.icon,
    this.color,
    this.name,
    required this.action,
  }) : super(key: key);

  final Size size;
  final String? name;
  final String text;
  final String option;
  final Size padding;
  final String icon;
  final Color? color;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding.height, horizontal: padding.width),
      child: Container(
        height: size.height * 0.34,
        width: size.width * 0.9,
        child: CustomPaint(
          painter: RPSCustomPainter1(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: size.height * 0.011),
              CircleAvatar(
                radius: size.height * 0.05,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: size.height * 0.05 - 3,
                  backgroundColor: color ?? Color(0xffe0c4b5),
                  child: Text(
                    '$icon',
                    style: TextStyle(fontSize: name != null ? 30 : 50),
                  ),
                ),
              ),
              Text(
                '@ $name',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: name != null ? size.height * 0.025 : 0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: size.height * 0.028,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  option,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.012,
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: action,
              ),
              SizedBox(height: size.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0960000, size.height);
    path_0.quadraticBezierTo(
        size.width * 0.0465000, size.height * 0.9950000, size.width * 0.0260000, size.height * 0.9480000);
    path_0.quadraticBezierTo(
        size.width * -0.0007500, size.height * 0.8845000, size.width * 0.0030000, size.height * 0.7900000);
    path_0.lineTo(size.width * 0.0650000, size.height * 0.3100000);
    path_0.quadraticBezierTo(
        size.width * 0.0767500, size.height * 0.2455000, size.width * 0.1060000, size.height * 0.2200000);
    path_0.quadraticBezierTo(
        size.width * 0.1217500, size.height * 0.2020000, size.width * 0.1970000, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.7960000, size.height * 0.2000000);
    path_0.quadraticBezierTo(
        size.width * 0.8807500, size.height * 0.2015000, size.width * 0.8940000, size.height * 0.2220000);
    path_0.quadraticBezierTo(
        size.width * 0.9212500, size.height * 0.2425000, size.width * 0.9340000, size.height * 0.3080000);
    path_0.lineTo(size.width * 0.9970000, size.height * 0.7920000);
    path_0.quadraticBezierTo(
        size.width * 0.9977500, size.height * 0.8980000, size.width * 0.9740000, size.height * 0.9500000);
    path_0.quadraticBezierTo(size.width * 0.9485000, size.height * 1.0020000, size.width * 0.9040000, size.height);
    path_0.lineTo(size.width * 0.0960000, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
