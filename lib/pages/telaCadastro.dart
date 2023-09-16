import 'package:flutter/material.dart';
import 'package:Festou/pages/telaSeletoraLocador.dart';
import 'package:Festou/pages/telaInicial.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/user_model.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _addressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
        Expanded(child: ScopedModelDescendant<UserModel>(
          builder: (context, child, model) {
            if (model.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Form(
              key: _formKey,
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Preencha os campos abaixo:",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Valentine',
                        color: Color.fromRGBO(216, 0, 255, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                          labelText: 'CPF/CNPJ',
                          hintText: 'Digite seu CPF ou CNPJ',
                        ),
                        validator: (text) {
                          if (text!.isEmpty) return 'CPJ/CNPJ invalido';
                          return null;
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        labelText: 'E-mail',
                        hintText: 'Digite seu e-mail',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (text) {
                        if (text!.isEmpty || !text.contains('@')) {
                          return 'E-mail inválido';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                              return null;
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
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: TextFormField(
                                controller: _addressController,
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
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
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
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: _passController,
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
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                                Map<String, dynamic> userData = {
                                  "nome": _nameController.text,
                                  "email": _emailController.text,
                                  "endereco": _addressController.text,
                                };

                                model.signUp(
                                    userData: userData,
                                    pass: _passController.text,
                                    onSuccess: _onSuccess,
                                    onFail: _onFail);
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TelaSeletoraLocador()),
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
                                      builder: (context) =>
                                          const TelaInicial()),
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
            );
          },
        )),
      ]),
    );
  }

  void _onSuccess() {}

  void _onFail() {}
}
