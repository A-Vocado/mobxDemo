import 'package:mobx/mobx.dart';
import 'package:tutorial_mobx/models/client.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String? validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'campo obrigatório';
    } else if (client.name.length <= 3) {
      return 'Seu nome precisa ter mais de 3 letras';
    }
    return null;
  }

  String? validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'campo obrigatório';
    } else if (!client.email.contains('@')) {
      return 'e-mail inválido';
    }
    return null;
  }

  // String? validateCpf() {
  //   if (client.context == null || client.cpf.isEmpty) {
  //     return 'campo obrigatório';
  //   } else if (!client.cpf.contains('0')) {
  //     return 'cpf inválido';
  //   }
  //   return null;
  // }
}
