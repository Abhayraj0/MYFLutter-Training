class UserModelLO {
  int? id;
  String? name;
  String? number;
  String? email;
  String? pass;
  String? conPass;


  UserMap() {
    var mapping = new Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name;
    mapping['number'] = number;
    mapping['email'] = email;
    mapping['pass'] = pass;
    mapping["conPass"] = conPass;

    return mapping;
  }
}
