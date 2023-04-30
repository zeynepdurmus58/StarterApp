import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starter_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

// GoRouter configuration
final _router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}