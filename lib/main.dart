import 'package:Festou/pages/MeusEspacos.dart';
import 'package:Festou/pages/RouteGenerator.dart';
import 'package:Festou/pages/telaCarregamento.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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