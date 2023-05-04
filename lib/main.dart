import 'package:flutter/material.dart';
import 'package:vascommtest/ui/screens/auth/login/login_screen.dart';
import 'package:vascommtest/utils/utils.dart';

void main() {
  AppUtils.navigatorKey = GlobalKey<NavigatorState>();
  AppUtils.scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: AppUtils.navigatorKey,
      scaffoldMessengerKey: AppUtils.scaffoldMessengerKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
