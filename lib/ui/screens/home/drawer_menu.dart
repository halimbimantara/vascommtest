import 'package:flutter/material.dart';

class DrawerMenuScreen extends StatelessWidget {
  const DrawerMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      //kPrussianBlue.withOpacity(0.8)
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [],
            ),
          ),
          const Text('Hello')
        ],
      ),
    );
  }
}
