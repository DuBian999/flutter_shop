import 'package:flutter/material.dart';

// 更多列表组件
class MoreList extends StatefulWidget {
  MoreList({Key? key}) : super(key: key);

  @override
  _MoreListState createState() => _MoreListState();
}

class _MoreListState extends State<MoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: const Color.fromARGB(255, 24, 50, 201),
          child: Text('更多列表$index'),
        );
      },
    );
  }
}
