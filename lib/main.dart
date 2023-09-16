import 'package:Festou/pages/MeusEspacos.dart';
import 'package:Festou/pages/RouteGenerator.dart';
import 'package:Festou/models/user_model.dart';
import 'package:Festou/pages/telaCarregamento.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

final ThemeData temaPadrao = ThemeData(
 // primarySwatch: Colors.purple
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepPurple, // Color.fromRGBO(125, 0, 254, 1),
    )
        .copyWith(secondary: const Color.fromRGBO(216, 0, 255, 1),),

);

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
    return  MaterialApp(
      home: MeusEspacos(),
      initialRoute: "/",
      theme: temaPadrao,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

/*
telaConfirmarSenha para o locatario anunciar e para o locador/locatario trocar os dados
telaDados para locador/locatario
 */