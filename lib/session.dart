import 'package:acnh_mate/Common/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Session {
  static final Session instance = Session._();

  bool initialized = false;
  var prefs;

  Session._();

  init() async {
    prefs = await SharedPreferences.getInstance();
    initialized = true;
  }

  Future<int> getQuestValue(QuestType questType) async {
    if (!initialized) await init();
    return await prefs.getInt(questType.toString()) ?? 0;
  }

  addQuestValue(QuestType questType, int amount) async {
    prefs.setInt(questType.toString(), await getQuestValue(questType) + amount);
  }
}
