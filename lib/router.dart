import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grosync/screens/shopping_list.dart';

import 'screens/create_group.dart';
import 'screens/groups.dart';
import 'screens/join_group.dart';
import 'screens/landing.dart';
import 'screens/shopping_list.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => Landing());
    case 'join_group':
      return MaterialPageRoute(builder: (context) => Join_group());
    case 'create_group':
      return MaterialPageRoute(builder: (context) => Create_group());
    case 'shopping_list':
      return MaterialPageRoute(builder: (context) => Shopping_list());
    case 'groups':
      var arg = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => Groups(
                argument: arg,
              ));

    default:
      return MaterialPageRoute(builder: (context) => Landing());
  }
}
