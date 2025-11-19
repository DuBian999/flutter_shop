import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Main/body.dart';
import 'package:flutter_shop/pages/Main/tab_list.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(activeIndex: _activeIndex),
      bottomNavigationBar: TabList(
        activeIndex: _activeIndex,
        onChange: (index) {
          _activeIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
