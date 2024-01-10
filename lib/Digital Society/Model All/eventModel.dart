class EventModel {
  int? id;
  String? titleE;
  String? descE;
  String? dateE;

  EventModel(
      {required this.id,
      required this.titleE,
      required this.descE,
      required this.dateE});

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
        id: json['id'],
        titleE: json['titleE'],
        descE: json['descE'],
        dateE: json['dateE']);
  }
}
