
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/model/gategort_model.dart';

class Shape extends StatelessWidget{
  int index ;
  CategoryModel categoryModel;
  Shape({required this.index, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
     return Container(
      /// margin: const EdgeInsets.all(10),
       width: 340 , height: 648,
       decoration:  BoxDecoration(color: AppTheme.rad,
       borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(25),
           topEnd:  Radius.circular(25),
           bottomEnd:  Radius.circular(index.isEven ? 0 :25),
           bottomStart: Radius.circular(index.isOdd ?0 : 25),
       )),
       child:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
       Image.asset("assets/image/${categoryModel.nameImage}.png"),
       Text("Sports",style: Theme.of(context).textTheme.displaySmall,)
     ],),);

  }
}