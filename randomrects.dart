import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ),
  );
}
class MyWidget extends StatefulWidget{
  @override
  MyWidgetState createState() => MyWidgetState();
}
class MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap:(){
            setState((){
              
            });
        },
        child:CustomPaint(
        painter:Squares(),
        child: Container(),
      )),
    );
  }
}

class Squares extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size)
  {
    final height=size.height;
    final width=size.width;
    Paint p=Paint();
    Path mainbg=Path();
    
    mainbg.addRect(Rect.fromLTRB(0,0,width,height)); //creating rectangle with full w and h
    p.color=Colors.blue.shade700;
    canvas.drawPath(mainbg,p);  //filled background with blue rectangle
    
    for(int i=1;i<50;i++)
    {
      drawRect(width*(i/100),height*(i/100),width*(1-i/100),height*(1-i/100), Colors.primaries[Random().nextInt(Colors.primaries.length)],canvas);
    }
  }
  
  void drawRect(l,t,r,b,color,canvas)
  {
    Paint pt=Paint();
    Path path=Path();
    path.addRect(Rect.fromLTRB(l,t,r,b));
    pt.color=color;
    canvas.drawPath(path,pt);
  }
  
  @override 
  bool shouldRepaint(olddelegate){
    return olddelegate!=this;
  }
}
