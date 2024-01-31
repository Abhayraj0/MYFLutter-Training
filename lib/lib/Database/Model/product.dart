class ProductModel {
  int? id;
  String? name;
  String? category;
  String? price;
  String? number;

  ProductMap() {
    var mapp = Map<String, dynamic>();
    mapp['id'] = id?? null;
    mapp['name'] = name;
    mapp['category'] = category;
    mapp['price'] = price;
    mapp['number'] = number;

    return mapp;
  }
}