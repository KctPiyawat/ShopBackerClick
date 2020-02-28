class ProductModel {
  // Field
  String id;
  String code;
  String name;
  String unitId;
  String unitCode;
  String uName;
  String catId;
  String catCode;
  String catName;
  String price;
  String barcode;
  String pic;

  ProductModel(
      {this.id,
      this.code,
      this.name,
      this.unitId,
      this.unitCode,
      this.uName,
      this.catId,
      this.catCode,
      this.catName,
      this.price,
      this.barcode,
      this.pic});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'].toString();
    code = json['Code'];
    name = json['Name'];
    unitId = json['UnitId'];
    unitCode = json['UnitCode'];
    uName = json['UName'];
    catId = json['CatId'];
    catCode = json['CatCode'];
    catName = json['CatName'];
    price = json['Price'];
    barcode = json['Barcode'];
    pic = json['Pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Code'] = this.code;
    data['Name'] = this.name;
    data['UnitId'] = this.unitId;
    data['UnitCode'] = this.unitCode;
    data['UName'] = this.uName;
    data['CatId'] = this.catId;
    data['CatCode'] = this.catCode;
    data['CatName'] = this.catName;
    data['Price'] = this.price;
    data['Barcode'] = this.barcode;
    data['Pic'] = this.pic;
    return data;
  }
}
