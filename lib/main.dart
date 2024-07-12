import 'package:flutter/material.dart';
import 'package:webpricol/utils/colors.dart';
import 'home/ui/home_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Note App',
        theme: ThemeData(

          scaffoldBackgroundColor: AppColors.white,
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
        },
      );
  }
}
