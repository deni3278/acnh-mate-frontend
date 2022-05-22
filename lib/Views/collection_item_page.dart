import 'package:flutter/material.dart';
import '../Widgets/scaffold_widget.dart';

class CollectionItemPage extends StatelessWidget {
  const CollectionItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    var item = arguments['item'];
    return ScaffoldWidget(
      pageTitle: item.name!.nameUSen!,
      body: Card(
        child: Text(item.name!.nameUSen!),
      ),
    );
  }
}
