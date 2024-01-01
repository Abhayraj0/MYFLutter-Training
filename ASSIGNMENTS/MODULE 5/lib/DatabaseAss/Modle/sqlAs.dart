class UserModelAss {
  int? id;
  String? name;
  String? desc;
  String? date;
  String? piyority;


  UserMapAss() {
    var mapp = Map<String, dynamic>();
    mapp['id'] = id ?? null;
    mapp['name'] = name;
    mapp['desc'] = desc;
    mapp['date'] = date;
    mapp['piyority'] = piyority;

  return mapp;
  }
}