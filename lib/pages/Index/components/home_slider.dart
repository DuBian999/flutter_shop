import 'package:flutter/material.dart';

// 轮播图组件
class HomeSlider extends StatefulWidget {
  HomeSlider({Key? key}) : super(key: key);

  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      alignment: Alignment.center,
      color: Colors.red,
      child: Text('轮播图'),
    );
  }
}
