import 'package:flutter/material.dart';

// 爆款组件
class Hot extends StatefulWidget {
  Hot({Key? key}) : super(key: key);

  @override
  _HotState createState() => _HotState();
}

class _HotState extends State<Hot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Colors.red,
      child: Text('爆款商品'),
    );
  }
}
