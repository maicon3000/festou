import 'package:Festou/pages/MeusEspacos.dart';
import 'package:Festou/pages/NovoEspaco.dart';
import 'package:Festou/pages/telaLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const MeusEspacos(),
        );
      case "/login":
        return MaterialPageRoute(
          builder: (_) => const TelaLogin(),
        );
      case "/meus-espacos":
        return MaterialPageRoute(
          builder: (_) => const MeusEspacos(),
        );
      case "/novo-espaco":
        return MaterialPageRoute(
          builder: (_) => const NovoEspaco(),
        );
      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Tela não encontrada!"),
        ),
        body: const Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
