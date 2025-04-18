import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'providers/user_provider.dart';  // Pastikan ini UserProvider, bukan ZodiacProvider

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),  // Ganti ZodiacProvider dengan UserProvider
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
