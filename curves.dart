import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomPaint(
          painter:Logo(),
          child: Container(),
        ),
      ),
    );
  }
}

class Logo extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
    final width=size.width;
    final height=size.height;
    
    Path back=Path();
    Paint paint=Paint();
    back.addRect(Rect.fromLTRB(0,0,width,height));
    paint.color=Colors.white;
    canvas.drawPath(back,paint);
    
    Path upperCurve=Path();
    upperCurve.moveTo(width*0.35,height*0.25);
    upperCurve.quadraticBezierTo(width*0.5,height*0.08,width*0.7,height*0.25);
    upperCurve.moveTo(width*0.7,height*0.25);
    upperCurve.quadraticBezierTo(width*0.58,height*0.25,width*0.51,height*0.43);
    upperCurve.moveTo(width*0.51,height*0.43);
    upperCurve.quadraticBezierTo(width*0.45,height*0.25,width*0.35,height*0.25);
    upperCurve.moveTo(width*0.35,height*0.25);
    upperCurve.quadraticBezierTo(width*0.47,height*0.22,width*0.51,height*0.35);
    upperCurve.moveTo(width*0.51,height*0.35);
    upperCurve.quadraticBezierTo(width*0.58,height*0.20,width*0.7,height*0.25);
    paint..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawPath(upperCurve,paint);
    
    Path rightCurve=Path();
    rightCurve.moveTo(width*0.727,height*0.287);
    rightCurve.quadraticBezierTo(width*0.49,height*0.4,width*0.54,height*0.75);
    rightCurve.moveTo(width*0.727,height*0.287);
    rightCurve.quadraticBezierTo(width*0.79,height*0.6,width*0.54,height*0.75);
    rightCurve.moveTo(width*0.7,height*0.3);
    rightCurve.quadraticBezierTo(width*0.7,height*0.6,width*0.54,height*0.75);
    paint..color = Colors.purple
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;    
    canvas.drawPath(rightCurve,paint);
    
    Path leftCurve=Path();
    leftCurve.moveTo(width*0.31,height*0.29);
    leftCurve.quadraticBezierTo(width*0.41,height*0.31,width*0.488,height*0.495);
    leftCurve.moveTo(width*0.488,height*0.495);
    leftCurve.quadraticBezierTo(width*0.45,height*0.6,width*0.49,height*0.741);
    leftCurve.moveTo(width*0.49,height*0.741);
    leftCurve.quadraticBezierTo(width*0.25,height*0.7,width*0.31,height*0.29);
    leftCurve.moveTo(width*0.31,height*0.29);
    leftCurve.quadraticBezierTo(width*0.35,height*0.47,width*0.45,height*0.5);
    leftCurve.moveTo(width*0.45,height*0.5);
    leftCurve.quadraticBezierTo(width*0.4,height*0.6,width*0.49,height*0.741);
    paint..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;    
    canvas.drawPath(leftCurve,paint);

  }
  
  @override
  bool shouldRepaint(old){
    return old!=this;
  }
}
