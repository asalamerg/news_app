
import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

class ItemSources extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
     // width: 95,
     // height: 34,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 4 , horizontal: 8),
      decoration: BoxDecoration(
       color: isSelected ? AppTheme.primary : Colors.transparent,
        border: Border.all(color: AppTheme.primary,width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(25))
      ),
      child: Text( nameSource, style: Theme.of(context).textTheme.titleSmall?.copyWith(color:isSelected ? AppTheme.white : AppTheme.primary  ),),
    );
  }
  ItemSources({required this.nameSource , required this.isSelected});
  String nameSource ;
  bool isSelected;
}