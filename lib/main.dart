import 'package:flutter/material.dart';
import 'package:practice/homepage.dart';
import 'package:practice/states/stateManager.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => StateManager(),
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
