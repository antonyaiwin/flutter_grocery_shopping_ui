import 'package:flutter/material.dart';
import 'package:flutter_ui_task_20_march/core/constants/color_constants.dart';
import 'package:flutter_ui_task_20_march/view/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ui Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: ColorConstants.scaffoldBackgroundColor,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
