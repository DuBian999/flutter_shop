import 'package:flutter/material.dart';

class TabList extends StatefulWidget {
  final Function(int) onChange;
  final int activeIndex;
  TabList({Key? key, required this.onChange, required this.activeIndex})
    : super(key: key);

  @override
  _TabListState createState() => _TabListState();
}

class _TabListState extends State<TabList> {
  final List<Map<String, String>> _tabsList = [
    {
      'icon': 'lib/assets/tab_1.png',
      'activeIcon': 'lib/assets/tab_1_active.png',
      'label': '首页',
    },
    {
      'icon': 'lib/assets/tab_2.png',
      'activeIcon': 'lib/assets/tab_2_active.png',
      'label': '分类',
    },
    {
      'icon': 'lib/assets/tab_3.png',
      'activeIcon': 'lib/assets/tab_3_active.png',
      'label': '购物车',
    },
    {
      'icon': 'lib/assets/tab_4.png',
      'activeIcon': 'lib/assets/tab_4_active.png',
      'label': '我的',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.activeIndex,
      showUnselectedLabels: true,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: List.generate(_tabsList.length, (index) {
        return BottomNavigationBarItem(
          icon: Image.asset(
            index == widget.activeIndex
                ? _tabsList[index]['activeIcon']!
                : _tabsList[index]['icon']!,
            width: 30,
            height: 30,
          ),
          label: _tabsList[index]['label']!,
        );
      }),
      onTap: (index) {
        widget.onChange(index);
      },
    );
  }
}
