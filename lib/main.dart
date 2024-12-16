import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

import 'homeScreen.dart';
void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
      },initialRoute: HomeScreen.routeName,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,

    );

  }
}

