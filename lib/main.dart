// lib
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// model
import 'package:washoku/model/theme.dart';
// pages
import 'pages/top.dart';
import 'pages/detail.dart';
import 'pages/memu.dart';
// widgets

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: CustomColors.white,
    ),
  );
  runApp(const WashokuApp());
}

class WashokuApp extends StatelessWidget {
  const WashokuApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'washoku',
      theme: themeData,
      routes: {
        '/': (context) => const Top(),
        '/detail': (context) => const Detail(),
        '/menu': (context) => const Menu(),
      },
    );
  }
}
