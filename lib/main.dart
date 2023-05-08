import 'package:flutter/material.dart';
import 'package:vascommtest/ui/screens/auth/login/login_screen.dart';
import 'package:vascommtest/ui/screens/auth/register/register_page.dart';
import 'package:vascommtest/ui/screens/home/home_page.dart';
import 'package:vascommtest/utils/routes.dart';
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
      debugShowCheckedModeBanner: false,
      navigatorKey: AppUtils.navigatorKey,
      scaffoldMessengerKey: AppUtils.scaffoldMessengerKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      navigatorObservers: [routeObserver],
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case homeRoute:
            return MaterialPageRoute(builder: (_) => const HomePage());
          case loginRoute:
            return MaterialPageRoute(builder: (_) => const LoginScreen());
          case registerRoute:
            return MaterialPageRoute(builder: (_) => const RegisterPage());
          default:
            return MaterialPageRoute(
              builder: (_) {
                return const Scaffold(
                  body: Center(
                    child: Text('Page not found :('),
                  ),
                );
              },
            );
        }
      },
    );
  }
}
