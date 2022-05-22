import 'package:acnh_mate/Common/enums.dart';

import 'availability.dart';
import 'name.dart';

class Fish {
  CollectionsCategory category = CollectionsCategory.fish;
  Availability? availability;
  String? shadow;
  int? price;
  int? priceCj;
  String? catchPhrase;
  List<String>? altCatchPhrase;
  String? museumPhrase;
  String? imageUri;
  String? iconUri;
  String? sId;
  int? id;
  Name? name;
  String? fileName;
  Fish(
      {this.availability,
      this.shadow,
      this.price,
      this.priceCj,
      this.catchPhrase,
      this.altCatchPhrase,
      this.museumPhrase,
      this.imageUri,
      this.iconUri,
      this.sId,
      this.id,
      this.name,
      this.fileName});

  Fish.fromJson(Map<String, dynamic> json) {
    availability = json['availability'] != null
        ? Availability.fromJson(json['availability'])
        : null;
    shadow = json['shadow'];
    price = json['price'];
    priceCj = json['priceCj'];
    catchPhrase = json['catchPhrase'];
    altCatchPhrase = json['altCatchPhrase'] == null
        ? null
        : altCatchPhrase = json['altCatchPhrase'].cast<String>();
    museumPhrase = json['museumPhrase'];
    imageUri = json['imageUri'];
    iconUri = json['iconUri'];
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

    data['shadow'] = shadow;
    data['price'] = price;
    data['priceCj'] = priceCj;
    data['catchPhrase'] = catchPhrase;
    data['altCatchPhrase'] = altCatchPhrase;
    data['museumPhrase'] = museumPhrase;
    data['imageUri'] = imageUri;
    data['iconUri'] = iconUri;
    data['_Id'] = sId;
    data['id'] = id;

    if (name != null) {
      data['name'] = name!.toJson();
    }

    data['fileName'] = fileName;

    return data;
  }
}
