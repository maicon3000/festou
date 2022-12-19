import 'package:Festou/pages/telaDadosLocador.dart';
import 'package:Festou/pages/telaDadosLocatario.dart';
import 'package:Festou/pages/telaPerfilLocador.dart';
import 'package:flutter/material.dart';
import 'package:Festou/pages/telaPerfilLocatario.dart';


class TelaConfirmacaoSenhaLocatario extends StatelessWidget {
  TelaConfirmacaoSenhaLocatario({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  /*
fazer um p locador e outra p lcoatario  ? */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              'Espaco Alegria Kids',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text('Rua Maria da Graça, 123, Maria da Graça - RJ',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 13.0),
          child: Text(
            "Quer alterar seus dados?\nPrimeiro, confirme sua senha:",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Valentine',
              color: Color.fromRGBO(216, 0, 255, 1),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        labelText: 'Senha',
                        hintText: 'Digite sua senha',
                      ),
                      obscureText: true,
                      validator: (text) {
                        if (text!.isEmpty || text.length < 6) {
                          return 'Senha inválida';
                        }
                        return null;
                      }, //validator: (text),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
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
                              offset: const Offset(
                                  1, 3), // changes position of shadow
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
                                      builder: (context) => TelaDadosLocatario()),
                                );
                              }
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
                              "Confirmar",
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
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
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
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SizedBox(
                          height: 35,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => TelaPerfilLocador()),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}