import 'name.dart';

class Misc {
  int? buyPrice;
  int? sellPrice;
  bool? isOrderable;
  String? musicUri;
  String? imageUri;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Misc(
      {this.buyPrice,
      this.sellPrice,
      this.isOrderable,
      this.musicUri,
      this.imageUri,
      this.sId,
      this.id,
      this.name,
      this.fileName});

  Misc.fromJson(Map<String, dynamic> json) {
    buyPrice = json['buyPrice'];
    sellPrice = json['sellPrice'];
    isOrderable = json['isOrderable'];
    musicUri = json['musicUri'];
    imageUri = json['imageUri'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['buyPrice'] = buyPrice;
    data['sellPrice'] = sellPrice;
    data['isOrderable'] = isOrderable;
    data['musicUri'] = musicUri;
    data['imageUri'] = imageUri;
    data['_Id'] = sId;
    data['id'] = id;

    if (name != null) {
      data['name'] = name!.toJson();
    }

    data['fileName'] = fileName;

    return data;
  }
}
