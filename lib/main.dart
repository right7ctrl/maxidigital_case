import 'package:flutter/material.dart';
import 'package:maxidigital_case/app/app_constants.dart';
import 'package:maxidigital_case/view/invite/invite_view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: const InviteView(),
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(28, 0, 106, 1),
        iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
    );
  }
}
