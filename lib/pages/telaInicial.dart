import 'package:flutter/material.dart';

import 'telaCadastro.dart';
import 'telaLogin.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  //final MaterialStateProperty<Float>? fixedSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 80.0,
                  bottom: 10.0,
                ),
                child:
                Image.asset('assets/images/festou-logo.png', width: 250.0),
              ),
            ),
            Container(
              //container branco dos botoes
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(27),
                  topRight: Radius.circular(27),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      //container roxo do bem vindo
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(228, 201, 255, 1),
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
                            offset: const Offset(
                                0, 0), // changes position of shadow
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
                              const Text(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
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
                            offset: const Offset(
                                1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FractionallySizedBox(
                        widthFactor: 0.75,
                        child: SizedBox(
                          height: 35,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => TelaLogin()),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: const Size(300, 35),
                                  side: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(216, 0, 255, 1),
                                  ),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(
                                1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FractionallySizedBox(
                        widthFactor: 0.75,
                        child: SizedBox(
                          height: 35,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => TelaCadastro()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(300, 35),
                                side: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(125, 0, 254, 1)),
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
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(1, 3),
                          ),
                        ],
                      ),
                      child: FractionallySizedBox(
                        widthFactor: 0.75,
                        child: SizedBox(
                          height: 35,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor:
                                const Color.fromRGBO(125, 0, 254, 1),
                                minimumSize: const Size(300, 35),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                )),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/google-logo.png',
                                  width: 31.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40.0,
                                  ),
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
          ],
        ),
      ),
    );
  }
}