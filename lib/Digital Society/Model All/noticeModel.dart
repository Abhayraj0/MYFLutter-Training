class NoticeModel {
  int? id;
  String? titleN;
  String? descN;
  String? dateN;

  NoticeModel(
      {required this.id,
      required this.titleN,
      required this.descN,
      required this.dateN});

  factory NoticeModel.fromJson(Map<String, dynamic> json) {
    return NoticeModel(
        id: json['id'],
        titleN: json['titleN'],
        descN: json['descN'],
        dateN: json['dateN']);
  }
}
