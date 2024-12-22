
import 'package:flutter/material.dart';
import 'package:news_app/model/source_Model.dart';
import 'package:news_app/tabs/itemSources.dart';

class SourceTabs extends StatefulWidget{
  @override
  State<SourceTabs> createState() => SourceTabsState();

  List<Sources> sources ;
  SourceTabs(this.sources);

}
int current=0;
class SourceTabsState extends State<SourceTabs> {
  @override
  Widget build(BuildContext context) {

    return Column(children: [
      DefaultTabController(
        length: widget.sources.length,
        child: TabBar(
        onTap: (index){
           current=index;
          setState(() {});
          },
        padding: const EdgeInsets.only(top: 10),

        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: Colors.transparent,
        dividerColor: Colors.transparent,

        tabs:widget.sources.map((sources)=>ItemSources(
            nameSource: sources.name
            ,isSelected: widget.sources.indexOf(sources) == current,
        )).toList(),

      ),
    )],);
  }
}