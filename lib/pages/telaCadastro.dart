import 'package:flutter/material.dart';
import 'package:Festou/pages/telaPerfilLocador.dart';
import 'package:Festou/pages/telaSeletora.dart';
import 'package:Festou/pages/telaInicial.dart';
import 'package:Festou/pages/telaLogin.dart';

class TelaCadastro extends StatelessWidget {
  TelaCadastro({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  /*
  copiado do telaLogin, trocando os texfields e botoes, botando os paddings, tirando 2 flexible(2 ultimos textfield)
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
                    offset: const Offset(0, 0), // changes position of shadow
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
            )),
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
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                          labelText: 'CPF/CNPJ',
                          hintText: 'Digite seu CPF ou CNPJ',
                        ),
                        validator: (text) {
                          if (text!.isEmpty) return 'CPJ/CNPJ invalido';
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        labelText: 'E-mail',
                        hintText: 'Digite seu e-mail',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (text) {
                        if (text!.isEmpty || !text.contains('@'))
                          return 'E-mail inválido';
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 1)),
                              labelText: 'CEP',
                              hintText: 'Digite o CEP',
                            ),
                            keyboardType: TextInputType.number,
                            validator: (text) {
                              if (text!.isEmpty) return 'CEP inválido';
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: OutlinedButton(
                            //botao buscar
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: Size(
                                MediaQuery.of(context).size.width * 0.2,
                                40,
                              ),
                              side: const BorderSide(
                                width: 2,
                                color: Color.fromRGBO(216, 0, 255, 1),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            child: const FittedBox(
                              child: Text(
                                'Buscar',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(216, 0, 255, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: TextFormField(
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1)),
                                  labelText: 'Endereço',
                                  hintText: 'Digite seu endereço',
                                ),
                                validator: (text) {
                                  if (text!.isEmpty) {
                                    return 'Endereço inválido';
                                  }
                                  return null;
                                }),
                          ),
                        ),
                        Flexible(
                          child: TextFormField(
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1)),
                                labelText: 'Número',
                                hintText: 'Digite o número',
                              ),
                              keyboardType: TextInputType.number,
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'Número inválido';
                                }
                                return null;
                              }),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: TextFormField(
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    width: 1,
                                  )),
                                  labelText: 'Cidade',
                                  hintText: 'Digite sua cidade',
                                ),
                                validator: (text) {
                                  if (text!.isEmpty) {
                                    return 'Cidade inválida';
                                  }
                                  return null;
                                }),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextFormField(
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1)),
                                  labelText: 'Bairro',
                                  hintText: 'Digite seu bairro',
                                ),
                                validator: (text) {
                                  if (text!.isEmpty) {
                                    return 'Bairro inválido';
                                  }
                                  return null;
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        labelText: 'Confirme sua senha',
                        hintText: 'Digite novamente sua senha',
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
                    padding: const EdgeInsets.all(8.0),
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
                                      builder: (context) => TelaPerfilLocador()),
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
                              "Cadastrar",
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
                    padding: const EdgeInsets.all(8.0),
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
                                      builder: (context) => PrimeiraTela()),
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
/*
import 'package:flutter/material.dart';
import 'package:tela_1/pages/telaInicial.dart';
import 'package:tela_1/pages/telaLogin.dart';

class TelaCadastro extends StatelessWidget {
  TelaCadastro({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
          child: Container(
            //FUNDO BRANCO DA TELA
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(27),
                  topRight: Radius.circular(27),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
            ),
            child: Column(
              children: [
                Container(
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
                        offset:
                            const Offset(0, 0), // changes position of shadow
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Form(
                    key: _formKey,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 1)),
                              labelText: 'CPF/CNPJ',
                              hintText: 'Digite seu CPF ou CNPJ',
                            ),
                            validator: (text) {
                              if (text!.isEmpty) return 'CPJ/CNPJ invalido';
                            }),
                        TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                            labelText: 'E-mail',
                            hintText: 'Digite seu e-mail',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (text) {
                            if (text!.isEmpty || !text.contains('@'))
                              return 'E-mail inválido';
                          },
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1)),
                                  labelText: 'CEP',
                                  hintText: 'Digite o CEP',
                                ),
                                keyboardType: TextInputType.number,
                                validator: (text) {
                                  if (text!.isEmpty) return 'CEP inválido';
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: OutlinedButton(
                                //botao buscar
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.2,
                                    40,
                                  ),
                                  side: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(216, 0, 255, 1),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                                child: const FittedBox(
                                  child: Text(
                                    'Buscar',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(216, 0, 255, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1)),
                                      labelText: 'Endereço',
                                      hintText: 'Digite seu endereço',
                                    ),
                                    keyboardType: TextInputType.number,
                                    validator: (text) {
                                      if (text!.isEmpty) {
                                        return 'Endereço inválido';
                                      }
                                      return null;
                                    }),
                              ),
                            ),
                            Flexible(
                              child: TextFormField(
                                  decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1)),
                                    labelText: 'Número',
                                    hintText: 'Digite o número',
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: (text) {
                                    if (text!.isEmpty) {
                                      return 'Número inválido';
                                    }
                                    return null;
                                  }),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        width: 1,
                                      )),
                                      labelText: 'Cidade',
                                      hintText: 'Digite sua cidade',
                                    ),
                                    validator: (text) {
                                      if (text!.isEmpty) {
                                        return 'Cidade inválida';
                                      }
                                      return null;
                                    }),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1)),
                                      labelText: 'Bairro',
                                      hintText: 'Digite seu bairro',
                                    ),
                                    validator: (text) {
                                      if (text!.isEmpty) {
                                        return 'Bairro inválido';
                                      }
                                      return null;
                                    }),
                              ),
                            ),
                          ],
                        ),
                        Flexible(
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
                        Flexible(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 1)),
                              labelText: 'Confirme sua senha',
                              hintText: 'Digite novamente sua senha',
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 */
