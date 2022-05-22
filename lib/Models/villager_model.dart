import 'catch_translations.dart';
import 'name.dart';

class Villager {
  String? personality;
  String? birthdayString;
  String? birthday;
  String? species;
  String? gender;
  String? subtype;
  String? hobby;
  String? catchPhrase;
  String? iconUri;
  String? imageUri;
  String? bubbleColor;
  String? textColor;
  String? saying;
  CatchTranslations? catchTranslations;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Villager(
      {this.personality,
      this.birthdayString,
      this.birthday,
      this.species,
      this.gender,
      this.subtype,
      this.hobby,
      this.catchPhrase,
      this.iconUri,
      this.imageUri,
      this.bubbleColor,
      this.textColor,
      this.saying,
      this.catchTranslations,
      this.sId,
      this.id,
      this.name,
      this.fileName});

  Villager.fromJson(Map<String, dynamic> json) {
    personality = json['personality'];
    birthdayString = json['birthdayString'];
    birthday = json['birthday'];
    species = json['species'];
    gender = json['gender'];
    subtype = json['subtype'];
    hobby = json['hobby'];
    catchPhrase = json['catchPhrase'];
    iconUri = json['iconUri'];
    imageUri = json['imageUri'];
    bubbleColor = json['bubbleColor'];
    textColor = json['textColor'];
    saying = json['saying'];
    catchTranslations = json['catchTranslations'] != null
        ? CatchTranslations.fromJson(json['catchTranslations'])
        : null;
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['personality'] = personality;
    data['birthdayString'] = birthdayString;
    data['birthday'] = birthday;
    data['species'] = species;
    data['gender'] = gender;
    data['subtype'] = subtype;
    data['hobby'] = hobby;
    data['catchPhrase'] = catchPhrase;
    data['iconUri'] = iconUri;
    data['imageUri'] = imageUri;
    data['bubbleColor'] = bubbleColor;
    data['textColor'] = textColor;
    data['saying'] = saying;

    if (catchTranslations != null) {
      data['catchTranslations'] = catchTranslations!.toJson();
    }

    data['_Id'] = sId;
    data['id'] = id;

    if (name != null) {
      data['name'] = name!.toJson();
    }

    data['fileName'] = fileName;

    return data;
  }
}
