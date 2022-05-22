import 'package:acnh_mate/Widgets/circle_button_bar_widget.dart';
import 'package:flutter/material.dart';
import '../Common/enums.dart';

class ItemRowWidget extends StatelessWidget {
  dynamic item;
  final String firstIcon = "owl.png";
  String secondIcon = "";
  CollectionsCategory category = CollectionsCategory.fish;


  ItemRowWidget({Key? key,required this.item, }) : super(key: key){
    category = item.category;
    switch(category){
      case CollectionsCategory.fish:
        secondIcon = "fishing_net.png";
        break;
      case CollectionsCategory.bugs:
        secondIcon = "fossil.png";
        break;
      case CollectionsCategory.seaCritters:
        secondIcon = "leaf.png";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        '/collections_item',
        arguments: {'item': item},
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border(
              bottom: BorderSide(color: Colors.blue, width: 2),
            )),
        child: Row(
          children: <Widget>[
            Image.network(item.iconUri, height: 50),
            Text(item.name.nameUSen),
            const Spacer(),

            IconButton(

                onPressed: () {},
                icon: Image.asset("assets/button_icons/$firstIcon",
                    height: 30)),
            IconButton(
                onPressed: () {},
                icon: Image.asset("assets/button_icons/$secondIcon",
                    height: 30)),



          ],
        ),
      ),
    );
  }
}
