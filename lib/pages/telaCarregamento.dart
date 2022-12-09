import 'package:flutter/material.dart';
import 'package:Festou/pages/telaInicial.dart';

class TelaCarregamento extends StatefulWidget {
  const TelaCarregamento({Key? key}) : super(key: key);

  @override
  State<TelaCarregamento> createState() => _TelaCarregamentoState();
}

class _TelaCarregamentoState extends State<TelaCarregamento> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(125, 0, 254, 1),
                    Color.fromRGBO(216, 0, 255, 1),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/festou-logo.png', width: 250.0),
            )
          ],
        ),
      );

  }
}

/*onPressed: () {
Navigator.of(context).push(
MaterialPageRoute(builder: (context) => PrimeiraTela()),
);
},
style: OutlinedButton.styleFrom(
side: BorderSide(
width: 0,
)),

 */
