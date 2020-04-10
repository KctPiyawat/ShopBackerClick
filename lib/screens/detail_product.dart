import 'package:flutter/material.dart';
import 'package:shopbakerclick/models/product_model.dart';


class DetailProduct extends StatefulWidget {

  final ProductModel productModel;
  DetailProduct({Key key,this.productModel}):super(key:key);

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {

  // Field
  ProductModel model; 


  // Method 
  @override
  void initState() {
     super.initState();
     model = widget.productModel;
     print('name ====>>> ${model.name}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
    );
  }
}