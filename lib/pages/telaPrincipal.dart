import 'package:flutter/material.dart';
import 'package:Festou/pages/telaPerfilLocador.dart';
import 'package:Festou/pages/contratosPage.dart';
import 'package:Festou/pages/telaBuscar.dart';
import 'package:Festou/pages/telaPerfilLocatario.dart';
import 'telaHomeLocador.dart';
import 'telaHomeLocatario.dart';

class TelaPrincipal extends StatefulWidget {
  TelaPrincipal({super.key});

  @override
  TelaPrincipalState createState() => TelaPrincipalState();
}

class TelaPrincipalState extends State<TelaPrincipal> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: pc,

          /*if(locatario) {
    children: [
            TelaHomeLocatario(),
            BuscaPage(),
            ContratosPage(),
            TelaPerfilLocatario(),]
          } else { */
    children: [
            TelaHomeLocador(),
            BuscaPage(),
            ContratosPage(),
            TelaPerfilLocador(),],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Contratos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil',),
        ],
        onTap: (pagina) {
          pc.animateToPage(pagina,
              duration: Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}
