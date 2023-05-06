import 'package:flutter/material.dart';
import 'package:vascommtest/data/models/product.dart';
import 'package:vascommtest/shared/themes.dart';

class ComponentItemProduct extends StatelessWidget {

  final Product product;
  const ComponentItemProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169,
      height: 176,
      child: Column(
        children: <Widget>[
          Row(
            children: const [
              Icon(
                Icons.star,
                color: kMikadoYellow,
              )
            ],
          ),
          Text(product.title)
        ],
      ),
    );
  }
}
