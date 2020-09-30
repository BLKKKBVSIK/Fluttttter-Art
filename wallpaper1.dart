import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home:Wallpaper()
  ));
}

class Wallpaper extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: CustomPaint(
          painter:Back(),
          child:Container()
        )
    );
  }
}

class Back extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
    final width=size.width;
    final height=size.height;
    
    Path back=Path();
    Paint paint=Paint();
    back.addRect(Rect.fromLTRB(0,0,width,height));
    paint.color=Color.fromRGBO(0,156,255,1);
    canvas.drawPath(back,paint);
    
    Path p1=Path();
    p1.addRect(Rect.fromLTRB(0,0,width*0.2,height*0.2));
    paint.color=Color.fromRGBO(109,240,174,1);
    canvas.drawPath(p1,paint);
   
    Path p2=Path();
    p2.moveTo(width*0.35,0);
    p2.quadraticBezierTo(width*0.3,height*0.3,0,height*0.3);
    p2.lineTo(0,height*0.2);
    p2.lineTo(width*0.2,0);
    p2.close();
    paint.color=Colors.orange;
    canvas.drawPath(p2,paint);
    
    Path p3=Path();
    p3.moveTo(width*.97,0);
    p3.quadraticBezierTo(width*0.2,height*0.2,0,height);
    p3.lineTo(width,height);
    p3.lineTo(width,0);
    p3.close();
    paint.color=Colors.red.shade800;
    canvas.drawPath(p3,paint);
    
    Path p4=Path();
    p4.moveTo(width,height*0.45);
    p4.quadraticBezierTo(width*0.55,height*0.67,width*0.43,height);
    p4.lineTo(width,height);
    p4.close();
    paint.color=Color.fromRGBO(0,156,255,1);
    canvas.drawPath(p4,paint);
    
    Path p5=Path();
    p5.moveTo(0,height*0.7);
    p5.quadraticBezierTo(width*0.4,height*0.73,width*0.45,height);
    p5.lineTo(0,height);
    p5.close();
    paint.color=Colors.white;
    canvas.drawPath(p5,paint);
    
    paint.color=Colors.yellow;
    canvas.drawCircle(Offset(width*0.55,height*0.7), 75.0, paint);
    
    paint.color=Colors.white;
    canvas.drawCircle(Offset(width*0.75,height*0.1),45.0,paint);
  }
  
  @override
  bool shouldRepaint(old){
    return old!=this;
  }
}
