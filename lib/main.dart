import 'package:flutter/material.dart';
import 'package:Festou/pages/telaHomeLocador.dart';
import 'package:Festou/pages/telaHomeLocatario.dart';
import 'package:Festou/pages/telaPerfilLocador.dart';
import 'package:Festou/pages/telaCadastro.dart';
import 'package:Festou/pages/telaDados.dart';
import 'package:Festou/pages/telaPerfilLocatario.dart';
import 'package:Festou/pages/telaPrincipal.dart';
import 'package:Festou/pages/telaLogin.dart';
import 'package:Festou/pages/telaInicial.dart';
import 'package:Festou/pages/telaCarregamento.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaPrincipal(),
    );
  }
}