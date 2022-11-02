import 'package:flutter/material.dart';
import 'package:ui_terms_sample/src/terms_of_service_webview.dart';
import 'src/terms_of_service.dart';

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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.5,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: TermsOfServiceWithWebview(),
    );
  }
}