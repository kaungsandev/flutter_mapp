import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/notifiers.dart';
import 'package:flutter_application_2/views/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeEnabledNotifier,
        builder: (context, isDarkMode, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.teal,
                brightness: isDarkMode ? Brightness.dark : Brightness.light,
              ),
              home: const WelcomePage());
        });
  }
}
