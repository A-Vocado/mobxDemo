import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:tutorial_mobx/models/controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final controller = Controller();

  _textField({
    required String labelText,
    onChanged,
    errorText,
  }) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Formulario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Observer(
              builder: (_) {
                return _textField(
                    errorText: controller.validateName,
                    labelText: 'name',
                    onChanged: controller.client.changeName);
              },
            ),
            SizedBox(height: 20),
            Observer(
              builder: (_) {
                return _textField(
                    errorText: controller.validateEmail,
                    labelText: 'e-mail',
                    onChanged: controller.client.changeEmail);
              },
            ),
            // SizedBox(height: 20),
            // Observer(
            //   builder: (_) {
            //     return _textField(
            //         errorText: controller.validateCpf,
            //         labelText: 'CPF',
            //         onChanged: controller.client.changeCpf);
            //   },
            // ),
            Observer(
              builder: (_) {
                return ElevatedButton(
                  onPressed: controller.isValid ? () {} : null,
                  child: Text('Salvar'),
                );
              },
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
