import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tutorial_mobx/controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
              onChanged: controller.changeName,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Sobrenome',
              ),
              onChanged: controller.changeLastname,
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return Text(controller.nomecompleto);
              },
            )
          ],
        ),
      ),
    );
  }
}
