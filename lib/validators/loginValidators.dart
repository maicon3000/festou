import 'dart:async';

class LoginValidators {

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains("@")){
        sink.add(email);
      } else {
        sink.addError("Insira um e-mail válido");
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink){
        if(password.contains(RegExp(r'^(?=.*[A-Z])(?=.*[!#@$%&_*\-+=\\\(\)\{\}\[\]])(?=.*[0-9])(?=.*[a-z]).{6,15}$'))){
          sink.add(password);
        } else {
          sink.addError("Senha inválida!\nSua senha deve conter entre 6 e 15 caracteres, com no mínimo:\n- 1 letra maiúscula\n- 1 letra minúscula\n- 1 número\n- 1 caracter especial");
        }
      }
  );
}