import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  final String argument;
  const Groups({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(argument),
      ),
      body: Center(
        child: Text(argument),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
