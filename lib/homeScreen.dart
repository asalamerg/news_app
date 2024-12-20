
import 'package:flutter/material.dart';
import 'package:news_app/Categories/categories_details.dart';
import 'package:news_app/Categories/home_drawer.dart';
import 'package:news_app/Settings/settings.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/model/gategort_model.dart';

import 'Categories/categories_grid.dart';

class HomeScreen extends StatefulWidget{


  static const String routeName="home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
      color: AppTheme.white,
        image: DecorationImage(image: AssetImage("assets/image/pattern.png")),
      ),

      child: Scaffold(
        appBar: AppBar(title: Text(
            SelectcategoryModels !=null ?SelectcategoryModels!.text : "News App"

        )),
        drawer: Drawers(collBacks: SelectItemDrawers,),
        body:
        SelectcategoryModels !=null ?CategoriesDetails(catagoryId: SelectcategoryModels!.id,):
        SelectdItemD=="Categories" ? GategoriesGrid(categoyModelCollBack: SelectItemCategories,):Settings() ,

      ),
    );

  }
  String SelectdItemD="Categories";
  CategoryModel?  SelectcategoryModels;


  void SelectItemDrawers(String item){
  SelectdItemD=item;
  SelectcategoryModels=null;
  setState(() {});
  Navigator.of(context).pop();
  }


  void SelectItemCategories(CategoryModel categoryModel,){
  SelectcategoryModels=categoryModel;
  setState(() {});
  }
}
