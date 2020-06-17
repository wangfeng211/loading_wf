import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:loading_wf/common/application.dart';
import 'package:loading_wf/common/routes.dart';
import 'package:loading_wf/pages/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      navigatorKey: Routes.navigatorKey,
      title: 'Loading Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}