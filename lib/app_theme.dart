
import 'package:flutter/material.dart';

 class AppTheme{
  static const Color primary=Color(0xff39A552) ;
  static const Color white=Color(0xffFFFFFF);
  static const Color black=Color(0xff303030);
  static const Color navy=Color(0XFF4F5A69);
  static const Color rad=Color(0XFFC91C22);


  static ThemeData lightTheme=ThemeData(
   scaffoldBackgroundColor: Colors.transparent,
  appBarTheme:AppBarTheme(
      centerTitle: true,
      backgroundColor: AppTheme.primary,
      titleTextStyle: TextStyle(fontSize: 22,
       fontWeight: FontWeight.w400,color: AppTheme.white,),
   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37))
  ),
   textTheme: const TextTheme(displayMedium:TextStyle(color: AppTheme.navy, fontSize: 22, fontWeight: FontWeight.w700,),
       displaySmall:TextStyle(color: AppTheme.white, fontSize: 22, fontWeight: FontWeight.w400 ),)

  );
}