
import 'package:flutter/cupertino.dart';
import 'package:news_app/model/source_Model.dart';
import 'package:news_app/news/newslist.dart';
import 'package:news_app/tabs/sources.dart';

class CategoriesDetails extends StatefulWidget{
  @override
  State<CategoriesDetails> createState() => _CategoriesDetailsState();

  String catagoryId;
  CategoriesDetails({required this.catagoryId });
}

class _CategoriesDetailsState extends State<CategoriesDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SourceTabs(source),
      Expanded(child: NewsList()),
      
     
    ],);

  }

  List<Sources> source=List.generate(6,(index)=>Sources(id: "id$index", name: " nameSource$index"));
}