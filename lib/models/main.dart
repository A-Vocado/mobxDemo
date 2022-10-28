import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_mobx/models/controller.dart';
import 'package:tutorial_mobx/models/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
        )
      ],
      child: MaterialApp(
        title: 'MobX Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
