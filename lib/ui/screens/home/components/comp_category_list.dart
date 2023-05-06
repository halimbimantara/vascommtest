import 'package:flutter/material.dart';
import 'package:vascommtest/shared/themes.dart';

class CategoryComponent extends StatefulWidget {
  const CategoryComponent({Key? key}) : super(key: key);

  @override
  State<CategoryComponent> createState() => _CategoryComponentState();
}

class _CategoryComponentState extends State<CategoryComponent> {
  int selectedItem = 0;
  List categories = ['Semua Produk', 'Layanan Kesehatan', 'Alat Kesehatan'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: paddingDefault / 2),
      height: 30.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: paddingDefault / 2),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: kWhiteBG,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5.0,
                          offset: Offset(-5, 0),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5.0,
                          offset: Offset(5, 0),
                        ),
                      ],
                      color: index == selectedItem
                          ? kPrussianBlue
                          : kWhiteBG.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categories[index],
                      style:  TextStyle(
                          color: index == selectedItem ? Colors.white: kPrussianBlue,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
    );
  }
}
