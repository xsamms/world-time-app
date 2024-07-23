import 'package:flutter/material.dart';
import 'package:my_flutter/screens/choose_location.dart';
import 'package:my_flutter/screens/home.dart';
import 'package:my_flutter/screens/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Time App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomeScreen(
      //   title: 'World Time App',
      // ),
      initialRoute: '/home',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const HomeScreen(title: 'World Time App'),
        '/location': (context) => const ChooseLocation()
      },
    );
  }
}
