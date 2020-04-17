class PlsModel {
  String unitId;
  String unitCode;
  String unitName;
  String barcode;
  String price9;

  PlsModel(
      {this.unitId, this.unitCode, this.unitName, this.barcode, this.price9});

  PlsModel.fromJson(Map<String, dynamic> json) {
    unitId = json['UnitId'];
    unitCode = json['UnitCode'];
    unitName = json['UnitName'];
    barcode = json['Barcode'];
    price9 = json['Price9'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UnitId'] = this.unitId;
    data['UnitCode'] = this.unitCode;
    data['UnitName'] = this.unitName;
    data['Barcode'] = this.barcode;
    data['Price9'] = this.price9;
    return data;
  }
}
