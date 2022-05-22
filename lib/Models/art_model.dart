import 'name.dart';

class Art {
  bool? hasFake;
  int? buyPrice;
  int? sellPrice;
  String? imageUri;
  String? museumDesc;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Art(
      {this.hasFake,
      this.buyPrice,
      this.sellPrice,
      this.imageUri,
      this.museumDesc,
      this.sId,
      this.id,
      this.name,
      this.fileName});

  Art.fromJson(Map<String, dynamic> json) {
    hasFake = json['hasFake'];
    buyPrice = json['buyPrice'];
    sellPrice = json['sellPrice'];
    imageUri = json['imageUri'];
    museumDesc = json['museumDesc'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hasFake'] = hasFake;
    data['buyPrice'] = buyPrice;
    data['sellPrice'] = sellPrice;
    data['imageUri'] = imageUri;
    data['museumDesc'] = museumDesc;
    data['_Id'] = sId;
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['fileName'] = fileName;
    return data;
  }
}
