import 'name.dart';

class Hourly {
  int? hour;
  String? weather;
  String? musicUri;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Hourly(
      {this.hour,
      this.weather,
      this.musicUri,
      this.sId,
      this.id,
      this.name,
      this.fileName});

  Hourly.fromJson(Map<String, dynamic> json) {
    hour = json['hour'];
    weather = json['weather'];
    musicUri = json['musicUri'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'];
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['hour'] = hour;
    data['weather'] = weather;
    data['musicUri'] = musicUri;
    data['_Id'] = sId;
    data['id'] = id;
    data['name'] = name;
    data['fileName'] = fileName;

    return data;
  }
}
