import 'package:flutter/material.dart';
import 'package:tela_1/pages/telaPerfilLocador.dart';
import 'package:tela_1/pages/telaContratos.dart';
import 'package:tela_1/pages/telaBuscar.dart';
import 'TelaHomeLocador.dart';
import 'telaHome.dart';

class TelaSeletora extends StatefulWidget {
  TelaSeletora({super.key});

  @override
  TelaSeletoraState createState() => TelaSeletoraState();
}

class TelaSeletoraState extends State<TelaSeletora> {
  int paginaAtual = 3;
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Espaco Alegria Kids',
              style: TextStyle(
                color: Colors.black,
              ),
            ), Text('Rua Maria da Graça, 123, Maria da Graça - RJ',
                style: TextStyle(fontSize: 12.0,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: PageView(
        controller: pc,
        children: [
          TelaHomeLocador(),
          TelaBuscar(),
          TelaContratos(),
          TelaPerfilLocador(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Contratos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        onTap: (pagina) {
          pc.animateToPage(pagina,
              duration: Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}