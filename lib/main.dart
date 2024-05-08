import 'package:flutter/material.dart';
import 'ui/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Schibsted Grotesk"
      ).copyWith(
        scaffoldBackgroundColor: const Color(0xFFf4f4f4),
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.blue),
      ),
      title: "Klinik Anggara",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
