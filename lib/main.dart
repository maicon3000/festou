import 'package:Festou/pages/telaConfirmacaoSenhaEspaco.dart';
import 'package:Festou/pages/telaConfirmacaorSenhaLocador.dart';
import 'package:Festou/pages/telaDadosLocador.dart';
import 'package:Festou/pages/telaHomeLocatario.dart';
import 'package:Festou/pages/telaPerfilLocador.dart';
import 'package:flutter/material.dart';
import 'package:Festou/pages/telaHomeLocador.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TelaPerfilLocador(),
    );
  }
}

/*
telaConfirmarSenha para o locatario anunciar e para o locador/locatario trocar os dados
telaDados para locador/locatario

 */