
import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

class Drawers extends StatelessWidget{
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.white,
      width: MediaQuery.of(context).size.width * 0.7,
       height: double.infinity,
      child: Column(children: [
        Container(
          alignment: Alignment.center,
          ///padding: EdgeInsets.only(top: 75),
          color: AppTheme.primary,
          width: MediaQuery.of(context).size.width * 0.7,
          height:MediaQuery.of(context).size.height * 0.2,
          child: Text('News App',style: Theme.of(context).textTheme.displaySmall ),),
          const SizedBox(height: 10,),
          Container( padding:const EdgeInsets.all(12),child: Row(children: [const Icon(Icons.list,size: 30,),const SizedBox(width:  10,),Text("Categories",style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 24 ,color: AppTheme.black),)],)),
          const SizedBox(height: 10,),
          Container(padding:const EdgeInsets.all(12),child: Row(children: [const Icon(Icons.settings,size: 30,),const SizedBox(width:  10,),Text("Settings",style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 24,color: AppTheme.black))],))

      ],),
    );

  }
}