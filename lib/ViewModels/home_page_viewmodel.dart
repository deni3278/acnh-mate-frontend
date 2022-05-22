import 'package:acnh_mate/Common/enums.dart';
import 'package:acnh_mate/session.dart';

class HomePageViewModel {
//Ensure singleton
  static final HomePageViewModel instance = HomePageViewModel._();

  var storage;

  HomePageViewModel._() {
    init();
  }

  init() async {
    storage = Session.instance;
  }

  dailyButton_onClick(QuestType questType, bool pressed) async {
    if (pressed) {
      storage.addQuestValue(questType, 1);
    } else {
      storage.addQuestValue(questType, -1);
    }
  }

  Future<int> getFilled(QuestType questType) async {
    return await storage.getQuestValue(questType);
  }
}
