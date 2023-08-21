import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';

void main() {
  runApp(storeapp());
}

class storeapp extends StatelessWidget {
  const storeapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        homepage.id: (context) => homepage(),
      },
      initialRoute: homepage.id,
    );
  }
}
