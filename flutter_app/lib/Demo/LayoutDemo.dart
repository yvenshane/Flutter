import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        ConstrainedBoxDemo(),
      ],
    );
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 200.0,
        maxWidth: 200.0
      ),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(0.0, -1.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
//                  borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                  colors: [
                    Colors.red,
                    Colors.yellow
                  ]
              ),
            ),
            child: Icon(Icons.backspace, color: Colors.white, size: 32.0),
          ),
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 30.0,
          top: 50.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 50.0,
          top: 80.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 20.0,
          top: 110.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 70.0,
          top: 140.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 20.0,
          top: 170.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  
  IconBadge(this.icon, {
    this.size = 32.0
  });
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}