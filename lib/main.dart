import 'package:flutter/material.dart';
import 'package:git_hubdemo/screens/home-page.dart';
import 'package:git_hubdemo/screens/login-page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
