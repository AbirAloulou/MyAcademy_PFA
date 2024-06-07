import 'package:flutter/material.dart';
import 'package:myacademy_trainer/menu/hidden_drawer.widget.dart';
import 'package:myacademy_trainer/pages/class_details.page.dart';
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
      home: const MyHomePage(title: 'MY ACADEMY'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Academy for trainers',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xffA39BFF,
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
      home: LoginPage(),
      routes: {
        '/hiddenDrawer': (context) => HiddenDrawer(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
