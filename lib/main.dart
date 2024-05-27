import 'package:bmi_calculator/bmi_calculator/product/global/theme_notifer.dart';
import 'package:bmi_calculator/bmi_calculator/state_managment/home_view_provider.dart';
import 'package:bmi_calculator/bmi_calculator/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeNotifer>(
    create: (context) => ThemeNotifer(),
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewProvider(),
      child: Consumer<ThemeNotifer>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: themeNotifier.currentTheme,
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
