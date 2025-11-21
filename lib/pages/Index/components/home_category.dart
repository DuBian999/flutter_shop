import 'package:flutter/material.dart';

// 分类组件
class HomeCategory extends StatefulWidget {
  HomeCategory({Key? key}) : super(key: key);

  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            alignment: Alignment.center,
            color: Colors.redAccent,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text('分类$index'),
          );
        },
      ),
    );
  }
}
