import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grosync/router.dart' as router;
import 'package:grosync/routing_constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routing',
      onGenerateRoute: router.generateRoute,
      initialRoute: Landing_page,
    );
  }
}
