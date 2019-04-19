import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://bpic.588ku.com//back_origin_min_pic/19/04/17/99db77a9b72025a48a5387b9cecf3aa3.jpg'),
          alignment: Alignment.topCenter,
//          repeat: ImageRepeat.repeatY
        fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.indigo[400].withOpacity(0.5),
              BlendMode.hardLight,
          )
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.red,
                width: 3.0,
                style: BorderStyle.solid,
              ),
//              borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(16.0),
//                bottomRight: Radius.circular(56.0),
//              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Colors.yellow,
                  blurRadius: 1.0,
                  spreadRadius: -100.0
                ),
              ],
              shape: BoxShape.circle,
//              gradient: RadialGradient(
//                  colors: [
//                    Colors.yellow,
//                    Colors.red,
//                    Colors.black
//                  ]
//              ),
              gradient: LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.black
                  ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: '大哥',
        style: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: '是我哥哥',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 20.0,
  );

  final String _author = '是知道';
  final String _title = '大多数';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '!!!!!$_author!!!!<$_title>大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，大段文字，',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}