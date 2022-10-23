import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';

import 'route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({Key? key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Router One', children: [
      Text(
        number.toString(),
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop(456);
        },
        child: Text('pop'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => RouteTwoScreen(),
              settings: RouteSettings(
                arguments: 789,
              ),
            ),
          );
        },
        child: Text('push'),
      ),
      ElevatedButton(
        onPressed: () {
          final result = Navigator.of(context).maybePop();
        },
        child: Text('maybe pop'),
      ),
    ]);
  }
}
