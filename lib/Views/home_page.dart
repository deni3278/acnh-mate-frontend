import 'package:acnh_mate/Common/enums.dart';
import 'package:acnh_mate/Widgets/circle_button_bar_widget.dart';
import 'package:flutter/material.dart';
import '../ViewModels/home_page_viewmodel.dart';
import '../Widgets/scaffold_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> iconPress = [false, false, false, false, false];
  var vm = HomePageViewModel.instance;

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      key: Key("ScaffoldWidgetKey"),
      pageTitle: "Home Page",
      body: Column(
        children: [
          Card(
            elevation: 4.0,
            child: Column(
              children: [
                const ListTile(
                  title: Text("Fossils"),
                  subtitle: Text("Collect fossils everyday"),
                ),
                CircleButtonBarWidget(
                    iconImage: "fossil.png",
                    onPressed: (pressed) {
                      vm.dailyButton_onClick(QuestType.fossils, pressed);
                      setState(() {});
                    },
                    count: 5,
                    filled: vm.getFilled(QuestType.fossils)),
              ],
            ),
          ),
          Card(
            elevation: 4.0,
            child: Column(
              children: [
                const ListTile(
                  title: Text("Villagers"),
                  subtitle: Text("Talk to your villagers everyday"),
                ),
                CircleButtonBarWidget(
                    iconImage: "fox.png",
                    onPressed: (pressed) {
                      vm.dailyButton_onClick(QuestType.villagers, pressed);
                      setState(() {});
                    },
                    count: 10,
                    filled: vm.getFilled(QuestType.villagers)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
