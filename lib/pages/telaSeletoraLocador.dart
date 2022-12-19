import 'package:Festou/pages/telaHomeLocador.dart';
import 'package:flutter/material.dart';
import 'package:Festou/pages/telaPerfilLocatario.dart';
import 'package:Festou/pages/contratosPage.dart';
import 'package:Festou/pages/telaBuscar.dart';
import 'telaHomeLocatario.dart';

class TelaSeletoraLocador extends StatefulWidget {
  const TelaSeletoraLocador({super.key});

  @override
  TelaSeletoraLocadorState createState() => TelaSeletoraLocadorState();
}

class TelaSeletoraLocadorState extends State<TelaSeletoraLocador> {
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

      body: IgnorePointer(
        ignoring: false,
        child: PageView(


          controller: pc,
          onPageChanged: setPaginaAtual,

            /*if(locatario) {
    children: [
              TelaHomeLocatario(),
              BuscaPage(),
              ContratosPage(),
              TelaPerfilLocatario(),]
            } else { */
    children: [
              const TelaHomeLocatario(),
              const BuscaPage(),
              const ContratosPage(),
              TelaPerfilLocatario(),],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: paginaAtual,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Contratos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil',),
        ],
        onTap: (pagina) {
          pc.animateToPage(pagina,
              duration: const Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}
