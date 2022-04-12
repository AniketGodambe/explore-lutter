import 'package:flutter/material.dart';
import 'package:git_hubdemo/screens/home-page.dart';
import 'package:git_hubdemo/screens/login-page.dart';
import 'package:get/get.dart';
import 'package:git_hubdemo/widgets.dart/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
