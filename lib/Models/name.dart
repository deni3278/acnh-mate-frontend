class Name {
  String? nameUSen;
  String? nameEUen;
  String? nameEUde;
  String? nameEUes;
  String? nameUSes;
  String? nameEUfr;
  String? nameUSfr;
  String? nameEUit;
  String? nameEUnl;
  String? nameCNzh;
  String? nameTWzh;
  String? nameJPja;
  String? nameKRko;
  String? nameEUru;

  Name(
      {this.nameUSen,
      this.nameEUen,
      this.nameEUde,
      this.nameEUes,
      this.nameUSes,
      this.nameEUfr,
      this.nameUSfr,
      this.nameEUit,
      this.nameEUnl,
      this.nameCNzh,
      this.nameTWzh,
      this.nameJPja,
      this.nameKRko,
      this.nameEUru});

  Name.fromJson(Map<String, dynamic> json) {
    nameUSen = json['nameUSen'];
    nameEUen = json['nameEUen'];
    nameEUde = json['nameEUde'];
    nameEUes = json['nameEUes'];
    nameUSes = json['nameUSes'];
    nameEUfr = json['nameEUfr'];
    nameUSfr = json['nameUSfr'];
    nameEUit = json['nameEUit'];
    nameEUnl = json['nameEUnl'];
    nameCNzh = json['nameCNzh'];
    nameTWzh = json['nameTWzh'];
    nameJPja = json['nameJPja'];
    nameKRko = json['nameKRko'];
    nameEUru = json['nameEUru'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['nameUSen'] = nameUSen;
    data['nameEUen'] = nameEUen;
    data['nameEUde'] = nameEUde;
    data['nameEUes'] = nameEUes;
    data['nameUSes'] = nameUSes;
    data['nameEUfr'] = nameEUfr;
    data['nameUSfr'] = nameUSfr;
    data['nameEUit'] = nameEUit;
    data['nameEUnl'] = nameEUnl;
    data['nameCNzh'] = nameCNzh;
    data['nameTWzh'] = nameTWzh;
    data['nameJPja'] = nameJPja;
    data['nameKRko'] = nameKRko;
    data['nameEUru'] = nameEUru;

    return data;
  }
}
