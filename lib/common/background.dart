import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget body;
  String title;
  double size = 50;

  Background({this.body, this.title, this.size});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size,
                  fontWeight: FontWeight.w600)),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: body),
      ),
    ]);
  }
}
