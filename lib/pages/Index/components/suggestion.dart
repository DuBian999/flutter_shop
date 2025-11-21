import 'package:flutter/material.dart';

// 推荐组件
class Suggestion extends StatefulWidget {
  Suggestion({Key? key}) : super(key: key);

  @override
  _SuggestionState createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 200,
        alignment: Alignment.center,
        color: Colors.teal,
        child: Text('推荐'),
      ),
    );
  }
}
