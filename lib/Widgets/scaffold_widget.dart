import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({Key? key, required String this.pageTitle, required this.body})
      : super(key: key);
  final pageTitle;
  final Widget body;

  @override
  _ScaffoldWidgetState createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.pageTitle),
        ),
        drawer: Drawer(
            child: ListView(children: <Widget>[
          ListTile(
            selectedTileColor: Colors.blue,
            title: const Text('Home'),
            onTap: () {
              var pageName = "/home";
              Navigator.pushNamed(context, pageName);
            },
          ),
          ListTile(
              selectedTileColor: Colors.blue,
              key: Key("CollectionsButton"),
              title: const Text('Collections'),
              onTap: () {
                var pageName = "/collections";
                Navigator.pushNamed(context, pageName);
              }),
        ])),
        body: widget.body);
  }
}
