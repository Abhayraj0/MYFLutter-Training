class ComplaintsModel {
  int? id;
  String? topicC;
  String? descC;

  ComplaintsModel(
      {required this.id, required this.topicC, required this.descC});

  factory ComplaintsModel.fromJson(Map<String, dynamic> json) {
    return ComplaintsModel(
        id: json['id'], topicC: json["topicC"], descC: json['descC']);
  }
}
