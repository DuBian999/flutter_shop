import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/viewModels/index.dart';

// 轮播图组件
class HomeSlider extends StatefulWidget {
  final List<BannerItem> bannerList;
  HomeSlider({Key? key, required this.bannerList}) : super(key: key);

  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int _currentIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  // 生成搜索栏
  Widget _getSeachBar() {
    return Positioned(
      top: 20,
      left: 20,
      right: 20,
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: TextField(
          style: TextStyle(color: Colors.white, fontSize: 16),
          decoration: InputDecoration(
            // 背景颜色
            filled: true,
            fillColor: const Color.fromARGB(0, 80, 80, 80),
            // 默认状态下的边框
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.red, // 红色边框
                width: 2.0,
              ),
            ),

            // 聚焦状态下的边框
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.green, // 绿色边框
                width: 2.0,
              ),
            ),

            hintText: '搜索',
            // 搜索图标
            prefixIcon: Icon(
              Icons.search,
              color: const Color.fromARGB(255, 196, 11, 11),
            ),
          ),
        ),
      ),
    );
  }

  // 生成banner列表
  Widget _getBannerList() {
    return CarouselSlider(
      carouselController: _carouselController,
      items: widget.bannerList.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Image.network(
              item.imgUrl!,
              fit: BoxFit.cover,
              // 图片宽度占满屏幕
              width: MediaQuery.of(context).size.width,
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        initialPage: _currentIndex,
        height: 300,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          _currentIndex = index;
          setState(() {});
        },
      ),
    );
  }

  // 生成轮播图指示器控件
  Widget _getIndicator() {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(widget.bannerList.length, (index) {
          return GestureDetector(
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _currentIndex == index ? 30 : 10,
              height: 4,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: _currentIndex == index
                    ? const Color.fromARGB(255, 20, 201, 125)
                    : Colors.grey,
              ),
            ),
            onTap: () {
              _carouselController.animateToPage(index);
              _currentIndex = index;
              setState(() {});
            },
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_getBannerList(), _getSeachBar(), _getIndicator()]);
  }
}
