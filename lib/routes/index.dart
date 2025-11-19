import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Login/index.dart';
import 'package:flutter_shop/pages/Main/index.dart';

Widget getRootWidget() {
  return MaterialApp(
    title: 'Flutter Shop',
    theme: ThemeData(primarySwatch: Colors.blue),
    initialRoute: '/',
    routes: getRootRoutes(),
  );
}

Map<String, Widget Function(BuildContext)> getRootRoutes() {
  return {
    '/': (context) => MainPage(),
    '/login': (context) => LoginPage(),
    '/home': (context) => Text('首页'),
  };
}
