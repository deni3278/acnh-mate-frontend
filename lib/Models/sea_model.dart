import '../Common/enums.dart';
import 'availability.dart';
import 'name.dart';

class Sea {
  CollectionsCategory category = CollectionsCategory.seaCritters;
  Availability? availability;
  String? speed;
  String? shadow;
  int? price;
  String? catchPhrase;
  String? imageUri;
  String? iconUri;
  String? museumPhrase;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Sea(
      {this.availability,
      this.speed,
      this.shadow,
      this.price,
      this.catchPhrase,
      this.imageUri,
      this.iconUri,
      this.museumPhrase,
      this.sId,
      this.id,
      this.name,
      this.fileName});

  Sea.fromJson(Map<String, dynamic> json) {
    availability = json['availability'] != null
        ? Availability.fromJson(json['availability'])
        : null;
    speed = json['speed'];
    shadow = json['shadow'];
    price = json['price'];
    catchPhrase = json['catchPhrase'];
    imageUri = json['imageUri'];
    iconUri = json['iconUri'];
    museumPhrase = json['museumPhrase'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (availability != null) {
      data['availability'] = availability!.toJson();
    }

    data['speed'] = speed;
    data['shadow'] = shadow;
    data['price'] = price;
    data['catchPhrase'] = catchPhrase;
    data['imageUri'] = imageUri;
    data['iconUri'] = iconUri;
    data['museumPhrase'] = museumPhrase;
    data['_Id'] = sId;
    data['id'] = id;

    if (name != null) {
      data['name'] = name!.toJson();
    }

    data['fileName'] = fileName;

    return data;
  }
}
