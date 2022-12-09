import 'package:flutter/material.dart';

import 'telaCadastro.dart';
import 'telaLogin.dart';

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({Key? key}) : super(key: key);

  //final MaterialStateProperty<Float>? fixedSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Container(
                child: Image.asset(
                    'assets/images/festou-logo.png',
                    width: 250.0),
              ),
            ),
            Flexible(
              flex: 1,
                child: Container()),
            Flexible(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(27),
                      topRight: Radius.circular(27),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0)),
                ),
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(228, 201, 255, 1),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(27),
                              topRight: Radius.circular(27),
                              bottomLeft: Radius.circular(27),
                              bottomRight: Radius.circular(0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 2,
                              offset: Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Text(
                                  'Bem vindo ao\nFestou!',
                                  style: TextStyle(
                                    //color: Colors.indigo[800],
                                    fontSize: 25.0,
                                    fontFamily: 'Valentine',
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 1
                                      ..color = Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Bem vindo ao\nFestou!',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: 'Valentine',
                                      color: Color.fromRGBO(173, 0, 255, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(top: 20.0),
                        height: 35,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Flexible(
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) =>  TelaLogin()),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: Size(300, 35),
                                  side:
                                      BorderSide(width: 2, color: Color.fromRGBO(216, 0, 255, 1),),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(216, 0, 255, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 35,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(1, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Flexible(
                            child: OutlinedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => TelaCadastro()),
                                  );
                                },
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(300, 35),
                                    side: BorderSide(
                                        width: 2, color: Color.fromRGBO(125, 0, 254, 1)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    )),
                                child: const Text(
                                  "Cadastre-se",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(125, 0, 254, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 35,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(1, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Flexible(
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(125, 0, 254, 1),
                                  minimumSize: Size(300, 35),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )),
                              child: Row(
                                //tentar botar dentro de padding p centralizar o texto perfeitamente
                                children: [
                                  Container(
                                    child: Image.asset(
                                        'assets/images/google-logo.png',
                                        width: 31.0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40.0, vertical: 5.0),
                                    child: Stack(
                                      children: [
                                        Text(
                                          "Logar com o Google",
                                          style: TextStyle(
                                            //color: Colors.indigo[800],
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            foreground: Paint()
                                              ..style = PaintingStyle.stroke
                                              ..strokeWidth = 2
                                              ..color = Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Logar com o Google",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 15,
                                            color: Colors.indigo[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
