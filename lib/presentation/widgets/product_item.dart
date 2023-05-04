import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final meal;
  final index;

  const ProductItem(this.meal, this.index, {Key? key}) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

