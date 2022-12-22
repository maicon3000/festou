import 'package:Festou/models/user_model.dart';
import 'package:Festou/pages/telaCarregamento.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp(model: UserModel(),));
}

class MyApp extends StatelessWidget {
  final UserModel model;
   const MyApp({Key? key, required this.model}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: model,
      child: MaterialApp(
        home: TelaCarregamento(),
      ),
    );
  }
}

/*
telaConfirmarSenha para o locatario anunciar e para o locador/locatario trocar os dados
telaDados para locador/locatario
 */