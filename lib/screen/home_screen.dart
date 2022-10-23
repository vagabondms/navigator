import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Home Screen',
      children: [
        ElevatedButton(
          onPressed: () {
            final result = Navigator.of(context).canPop();
            print(result);
          },
          child: Text('can pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          child: Text('maybe pop'),
        ),
        ElevatedButton(
          onPressed: () {
            final result = Navigator.of(context).pop();
          },
          child: Text('pop'),
        ),
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RouteOneScreen(number: 123),
              ),
            );
          },
          child: Text('push'),
        ),
      ],
    );
  }
}
