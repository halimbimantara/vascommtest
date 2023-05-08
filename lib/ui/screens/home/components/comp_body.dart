import 'package:flutter/material.dart';
import 'package:vascommtest/data/models/product.dart';
import 'package:vascommtest/ui/screens/home/components/comp_category_list.dart';
import 'package:vascommtest/ui/screens/home/components/comp_item_product.dart';

class HomeBodyBox extends StatefulWidget {
  const HomeBodyBox({super.key});

  @override
  State<HomeBodyBox> createState() => _HomeContentPageState();
}

class _HomeContentPageState extends State<HomeBodyBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        const CategoryComponent(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {}, child: ComponentItemProduct(product: products[index],))),
        )
      ]),
    );
  }
}
