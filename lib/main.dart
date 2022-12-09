import 'package:flutter/material.dart';
import 'package:tela_1/pages/telaHomeLocador.dart';
import 'package:tela_1/pages/telaPerfilLocador.dart';
import 'package:tela_1/pages/telaCadastro.dart';
import 'package:tela_1/pages/telaDados.dart';
import 'package:tela_1/pages/telaSeletora.dart';
import 'package:tela_1/pages/telaLogin.dart';
import 'package:tela_1/pages/telaInicial.dart';
import 'package:tela_1/pages/telaCarregamento.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TelaCarregamento(),
    );
  }
}
