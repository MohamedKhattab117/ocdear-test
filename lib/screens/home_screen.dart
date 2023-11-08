import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = const [
    Icon(Icons.home),
    Icon(Icons.tv),
    Icon(Icons.games),
    Icon(Icons.list),
    Icon(Icons.person),
  ];
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
