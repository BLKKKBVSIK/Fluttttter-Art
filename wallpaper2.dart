import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: WallPaper(),
    ),
  );
}

class WallPaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter:Back(),
        child: Container(),
      ),
    );
  }
}

class Back extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
    final width=size.width;
    final height=size.height;
    
    Random gen=Random();
    Paint p=Paint();
    
    Path back=Path();
    Paint paint=Paint();
    back.addRect(Rect.fromLTRB(0,0,width,height));
    paint.color=Colors.yellow.shade200;
    canvas.drawPath(back,paint);
    
    for(int i=-1;i<1200;i++)
    {
      for(int j=-1;j<12;j++)
      {
        p.color=Color.fromARGB(
          10 + (gen.nextDouble() * 100).round(),
          50 + gen.nextInt(2) * 150,
          50 + gen.nextInt(2) * 150,
          50 + gen.nextInt(2) * 150);     
      canvas.drawCircle(Offset(width*(j/10),width*(i/10)),width*0.1,p);
      }
    }
  }
  
  @override
  bool shouldRepaint(old){
    return old!=this;
  }
}
