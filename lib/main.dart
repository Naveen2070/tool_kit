import 'package:flutter/material.dart';
import 'package:tool_kit/main_menu/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 0, 119, 255),
    surface: const Color.fromARGB(255, 0, 119, 255),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData().copyWith(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 17, 160, 179),
                surface: const Color.fromARGB(131, 17, 160, 179),
        ),
      ),
      darkTheme: theme,
      home:  MainScreen(),
    );
  }
}