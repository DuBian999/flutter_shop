import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/Index/components/home_category.dart';
import 'package:flutter_shop/pages/Index/components/home_slider.dart';
import 'package:flutter_shop/pages/Index/components/hot.dart';
import 'package:flutter_shop/pages/Index/components/more_list.dart';
import 'package:flutter_shop/pages/Index/components/suggestion.dart';

class IndexView extends StatefulWidget {
  IndexView({Key? key}) : super(key: key);

  @override
  _IndexViewState createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: HomeSlider()),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(child: HomeCategory()),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(child: Suggestion()),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(child: Hot()),
                SizedBox(width: 10),
                Expanded(child: Hot()),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        MoreList(),
      ],
    );
  }
}
