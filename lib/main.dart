
import 'package:flutter/material.dart';
import 'package:habit_tracker/config/Theme/theme_provider.dart';
import 'package:habit_tracker/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create:(context)=> ThemeProvider(),
      child: const MyApp()
    )
     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Habit Tracker App',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomePage(),
    );
  }
}