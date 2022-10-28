import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_mobx/models/body.dart';
import 'package:tutorial_mobx/models/controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return Text(controller.isValid
                ? 'Formulario Validado'
                : 'Formulario não validado');
          },
        ),
      ),
      body: BodyWidget(),
    );
  }
}
