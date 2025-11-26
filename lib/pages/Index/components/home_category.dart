import 'package:flutter/material.dart';
import 'package:flutter_shop/viewModels/index.dart';

// 分类组件
class HomeCategory extends StatefulWidget {
  final List<CategoryItem> categoryList;
  HomeCategory({Key? key, required this.categoryList}) : super(key: key);

  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: widget.categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 231, 232, 234),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  widget.categoryList[index].picture!,
                  width: 40,
                  height: 40,
                ),
                Text(widget.categoryList[index].name!),
              ],
            ),
          );
        },
      ),
    );
  }
}
