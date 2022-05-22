import 'name.dart';

class Fossil {
  int? price;
  String? museumPhrase;
  String? imageUri;
  String? partOf;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Fossil(
      {this.price,
      this.museumPhrase,
      this.imageUri,
      this.partOf,
      this.sId,
      this.id,
      this.name,
      this.fileName});

  Fossil.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    museumPhrase = json['museumPhrase'];
    imageUri = json['imageUri'];
    partOf = json['partOf'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['price'] = price;
    data['museumPhrase'] = museumPhrase;
    data['imageUri'] = imageUri;
    data['partOf'] = partOf;
    data['_Id'] = sId;
    data['id'] = id;

    if (name != null) {
      data['name'] = name!.toJson();
    }

    data['fileName'] = fileName;

    return data;
  }
}
