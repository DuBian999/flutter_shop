import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Category/index.dart';
import 'package:flutter_shop/pages/Index/index.dart';
import 'package:flutter_shop/pages/Mine/index.dart';
import 'package:flutter_shop/pages/ShoppingCart/index.dart';

class Body extends StatefulWidget {
  final int activeIndex;
  Body({Key? key, required this.activeIndex}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IndexedStack(
        index: widget.activeIndex,
        children: [IndexView(), CategoryView(), ShopView(), MineView()],
      ),
    );
  }
}
