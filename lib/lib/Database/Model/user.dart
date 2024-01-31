
class UsersModel {
  int? id;
  String? name;
  String? email;
  String? password;



  UserMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id?? null;
    mapping['name'] = name;
    mapping['email'] = email;
    mapping['password'] = password;

    return mapping;
  }
}