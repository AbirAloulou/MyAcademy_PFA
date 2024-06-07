import 'package:flutter/material.dart';
import 'package:myacademy_trainer/menu/hidden_drawer.widget.dart';
import 'package:myacademy_trainer/pages/home.page.dart';
import 'package:myacademy_trainer/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xff7058BA,
          <int, Color>{
            50: Color(0xffF5F4FF),
            100: Color(0xffEDEBFF),
            200: Color(0xffD6D2FF),
            300: Color(0xffBDB2FF),
            400: Color(0xffA39BFF),
            500: Color(0xff7058BA),
            600: Color(0xff7058BA),
            700: Color(0xff7058BA),
            800: Color(0xff7058BA),
            900: Color(0xff7058BA),
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/hiddenDrawer': (context) => HiddenDrawer(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
