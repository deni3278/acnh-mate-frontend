import 'package:acnh_mate/Widgets/scaffold_widget.dart';
import 'package:flutter/material.dart';
import '../ViewModels/collection_page_viewmodel.dart';
import '../Widgets/item_row_widget.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> with SingleTickerProviderStateMixin {
  var vm = CollectionPageViewModel();
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: vm.tabs!.length);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      pageTitle: 'Collections',
      body: Column(
        children: [
          TabBar(
            labelColor: Colors.blue,
            controller: _tabController,
            tabs: vm.tabs!,
            onTap: (index) {
              vm.tabClick(index);
              setState(() {});
            },
          ),
          FutureBuilder(
              future: vm.fetchFromApi(),
              builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      //Map model class to itemrowwidget

                      
                      children: snapshot.data!
                          .map((item) => ItemRowWidget(item: item))
                          .toList(),

                    ),
                  );
                } else {
                  {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[CircularProgressIndicator(), Text("Loading...")]);
                  }
                }
              })
        ],
      ),
    );
  }
}
