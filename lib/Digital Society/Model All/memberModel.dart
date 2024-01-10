class MemberModel1 {
  String? id;
  String? name;
  String? contact;
  String? houseno;
  String? email;
  String? password;

  MemberModel1({
    required this.id,
    required this.name,
    required this.contact,
    required this.houseno,
    required this.email,
    required this.password,
  });

  factory MemberModel1.formJson(Map<String, dynamic> json) {
    return MemberModel1(
        id: json['id'],
        name: json['name'],
        contact: json['contact'],
        houseno: json['houseno'],
        email: json['email'],
        password: json['password']);
  }
}
