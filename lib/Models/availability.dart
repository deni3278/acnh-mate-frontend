class Availability {
  String? monthNorthern;
  String? monthSouthern;
  String? time;
  bool? isAllDay;
  bool? isAllYear;
  String? location;
  String? rarity;
  List<int>? monthArrayNorthern;
  List<int>? monthArraySouthern;
  List<int>? timeArray;

  Availability(
      {this.monthNorthern,
      this.monthSouthern,
      this.time,
      this.isAllDay,
      this.isAllYear,
      this.location,
      this.rarity,
      this.monthArrayNorthern,
      this.monthArraySouthern,
      this.timeArray});

  Availability.fromJson(Map<String, dynamic> json) {
    monthNorthern = json['monthNorthern'];
    monthSouthern = json['monthSouthern'];
    time = json['time'];
    isAllDay = json['isAllDay'];
    isAllYear = json['isAllYear'];
    location = json['location'];
    rarity = json['rarity'];
    monthArrayNorthern = json['monthArrayNorthern'].cast<int>();
    monthArraySouthern = json['monthArraySouthern'].cast<int>();
    timeArray = json['timeArray'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['monthNorthern'] = monthNorthern;
    data['monthSouthern'] = monthSouthern;
    data['time'] = time;
    data['isAllDay'] = isAllDay;
    data['isAllYear'] = isAllYear;
    data['location'] = location;
    data['rarity'] = rarity;
    data['monthArrayNorthern'] = monthArrayNorthern;
    data['monthArraySouthern'] = monthArraySouthern;
    data['timeArray'] = timeArray;

    return data;
  }
}
