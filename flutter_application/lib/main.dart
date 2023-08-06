// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application/pages/cart_page.dart';
import 'package:flutter_application/pages/home_page.dart';
import 'package:flutter_application/pages/login_page.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:flutter_application/widgets/themes.dart';

import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
        MyRoutes.cartRoutes: (context) => CartPage(),
      },
    );
  }
}
