
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/widget/loading.dart';
import 'package:timeago/timeago.dart' as timeago;



class ItemNews extends StatelessWidget{
  final fifteenAgo = DateTime.now().subtract(Duration(minutes: 15));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: Column(
       mainAxisAlignment:MainAxisAlignment.start,
        children: [
          CachedNetworkImage(imageUrl:"https://i.sstatic.net/y9DpT.jpg",
           placeholder: (_,__)=>Loading(),
          errorWidget: (_,__,___)=>Icon(Icons.image_not_supported),
          fit: BoxFit.fill,height: MediaQuery.of(context).size.height * 0.25,width: double.infinity,),
        SizedBox(height: 5,),
        Align(
            alignment: Alignment.bottomLeft,

            child: Text("BBC news", style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppTheme.navy, fontWeight: FontWeight.w400,fontSize: 12),)),
          SizedBox(height: 5,),
        Text("Why are football's biggest clubs starting a newtournament?",style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppTheme.black), ),
       Align(
           alignment: Alignment.bottomRight,
           child: Text( timeago.format(fifteenAgo),style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppTheme.navy),)),
      ],),
    );

  }
}