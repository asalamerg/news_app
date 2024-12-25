
import 'package:flutter/cupertino.dart';
import 'package:news_app/news/newsitem.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder( itemCount: 8,itemBuilder: (index,context)=>ItemNews());

  }
}