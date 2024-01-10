class ChairmanModel {
  
  int? id;
  String? nameCh;
  String? email;
  String? pass;

  ChairmanModel({required this.id, required this.nameCh, required this.email, required this.pass});

  factory ChairmanModel.fromJason(Map<String, dynamic> json) {
    return ChairmanModel(id: json['id'], nameCh: json['nameCh'],email: json['email'], pass: json['pass']);
  }
}