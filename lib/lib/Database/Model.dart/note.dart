
class NoteModel {
  int? id;
  String? name;
  String? desc;

  NoteMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name;
    mapping["desc"] = desc;

    return mapping;
  }
}
