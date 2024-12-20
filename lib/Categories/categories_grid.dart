
import 'package:flutter/material.dart';
import 'package:news_app/Categories/categories_details.dart';
import 'package:news_app/Categories/shape.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/model/gategort_model.dart';

class GategoriesGrid extends StatelessWidget{
  void Function(CategoryModel) categoyModelCollBack;
  GategoriesGrid({required this.categoyModelCollBack});
  @override
  Widget build(BuildContext context) {
    final categories=List.generate(6, (index)=>CategoryModel(id: "$index", text: "sport", nameImage: "ball", color: AppTheme.rad));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
        Padding(
          padding:const  EdgeInsets.symmetric(vertical: 24),
          child: Text("pick your category of interest",style:Theme.of(context).textTheme.displayMedium ),),
        Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,mainAxisSpacing: 24,crossAxisSpacing: 24),

              itemBuilder: (context,index)=>GestureDetector(
                  onTap: (){
                   categoyModelCollBack(categories[index],);

                  },
                  child: Shape(index: index,categoryModel:categories[index])) ,itemCount: categories.length,

            ),

        )
      ],),
    );

  }
}