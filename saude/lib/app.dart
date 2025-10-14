import 'package:flutter/material.dart';
import 'package:saude/pages/projetos_page.dart';
import 'package:saude/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.all(const Color.fromARGB(255, 20, 121, 172)),
          thickness: MaterialStateProperty.all(10),
          radius: Radius.circular(20),
        ),
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}