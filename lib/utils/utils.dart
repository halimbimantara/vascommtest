import 'package:flutter/material.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

class AppUtils {
  static late final GlobalKey<NavigatorState> navigatorKey;
  static late final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;



  static BuildContext? get context => navigatorKey.currentContext;

  static EdgeInsets get padding {
    return navigatorKey.currentContext != null
        ? MediaQuery.of(navigatorKey.currentContext!).viewPadding
        : EdgeInsets.zero;
  }

  static Size get size {
    return navigatorKey.currentContext != null
        ? MediaQuery.of(navigatorKey.currentContext!).size
        : const Size(0, 0);
  }

  static double get height {
    return navigatorKey.currentContext != null
        ? MediaQuery.of(navigatorKey.currentContext!).size.height
        : 0;
  }

  static double get width {
    return navigatorKey.currentContext != null
        ? MediaQuery.of(navigatorKey.currentContext!).size.width
        : 0;
  }
}
