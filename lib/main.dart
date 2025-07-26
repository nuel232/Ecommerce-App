import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {'/homePage': (context) => const HomePage()},
      ),
    );
  }
}
