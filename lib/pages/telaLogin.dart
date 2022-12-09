import 'package:flutter/material.dart';
import 'package:Festou/pages/telaPerfilLocador.dart';
import 'package:Festou/pages/telaInicial.dart';

import 'telaPrincipal.dart';

class TelaLogin extends StatelessWidget {
  TelaLogin({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  /*
  botei borda no primeiro container
  na listview, botar dentro de form e de um paddind, mas sem expanded ou flexible, isso nao aparece(segundo child do colum)
  todos os items do listview, sao paddings. e neles ha textfield e botoes
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          //cores gradientes
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(27),
                  bottomRight: Radius.circular(0)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(125, 0, 254, 1),
                  Color.fromRGBO(216, 0, 255, 1),
                ],
              ),
            ),
            child: Container(
              //container com a cor lilas
              height: MediaQuery.of(context).size.height * 0.15,
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
                //dentro desse container, bota uma row para botar as palavras em cima das outras
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    //usar stack para isso
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
            )

        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder:
                          UnderlineInputBorder(borderSide: BorderSide(width: 1)),
                          labelText: 'E-mail',
                          hintText: 'ex: nome@dominio.com',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (text) {
                          if (text!.isEmpty || !text.contains('')) {
                            return 'E-mail inválido';
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide(width: 1)),
                        labelText: 'Senha',
                        hintText: 'Digite sua senha',
                      ),
                      obscureText: true,
                      validator: (text) {
                        if (text!.isEmpty || text.length < 1) {
                          return 'Senha inválida';
                        }
                        return null;
                      }, //validator: (text),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Esqueci minha senha',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
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
                              offset: const Offset(1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SizedBox(
                          height: 35,
                          child: OutlinedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => TelaPrincipal()),
                                );
                              }
                            },
                            style: OutlinedButton.styleFrom(
                              //elevation: 18,
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
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
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
                              offset: const Offset(1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SizedBox(
                          height: 35,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => PrimeiraTela()),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: const Size(300, 35),
                                  side: const BorderSide(
                                      width: 2, color: Color.fromRGBO(125, 0, 254, 1)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )),
                              child: const Text(
                                "Voltar",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(125, 0, 254, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

      ]),
    );
  }
}