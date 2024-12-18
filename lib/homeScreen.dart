
import 'package:flutter/material.dart';
import 'package:news_app/Categories/home_drawer.dart';
import 'package:news_app/app_theme.dart';

import 'Categories/categories_grid.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName="home";
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
      color: AppTheme.white,
        image: DecorationImage(image: AssetImage("assets/image/pattern.png")),
      ),

      child: Scaffold(
        appBar: AppBar(title: Text('News App')),
        drawer: Drawers(),
        body:GategoriesGrid(),

      ),
    );

  }
}