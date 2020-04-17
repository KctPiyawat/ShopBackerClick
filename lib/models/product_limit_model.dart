class ProductLimitModel {
  int id;
  String code;
  String name;
  String catId;
  String catCode;
  String catName;
  String pLs;
  Null pic1;
  Null pic2;
  Null pic3;
  Null pic4;

  ProductLimitModel(
      {this.id,
      this.code,
      this.name,
      this.catId,
      this.catCode,
      this.catName,
      this.pLs,
      this.pic1,
      this.pic2,
      this.pic3,
      this.pic4});

  ProductLimitModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    code = json['Code'];
    name = json['Name'];
    catId = json['CatId'];
    catCode = json['CatCode'];
    catName = json['CatName'];
    pLs = json['PLs'];
    pic1 = json['Pic1'];
    pic2 = json['Pic2'];
    pic3 = json['Pic3'];
    pic4 = json['Pic4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Code'] = this.code;
    data['Name'] = this.name;
    data['CatId'] = this.catId;
    data['CatCode'] = this.catCode;
    data['CatName'] = this.catName;
    data['PLs'] = this.pLs;
    data['Pic1'] = this.pic1;
    data['Pic2'] = this.pic2;
    data['Pic3'] = this.pic3;
    data['Pic4'] = this.pic4;
    return data;
  }
}
