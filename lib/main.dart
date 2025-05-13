import 'package:flutter/material.dart';
import 'package:moviebookingapp/pages/bottomnav.dart';
import 'package:moviebookingapp/pages/detail_page.dart';
import 'package:moviebookingapp/pages/home.dart'; // Asegúrate de que esta ruta sea correcta

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          const DetailPage(), // En lugar de Home() // Cambia esto para usar tu Home
    );
  }
}
