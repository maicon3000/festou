import 'package:Festou/blocs/loginBloc.dart';
import 'package:Festou/pages/telaEsqueciMinhaSenha.dart';
import 'package:Festou/pages/telaSeletoraLocador.dart';
import 'package:Festou/widgets/inputField.dart';
import 'package:flutter/material.dart';
import 'package:Festou/pages/telaInicial.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _loginBloc = LoginBloc();

  @override
  void initState() {
    super.initState();

    _loginBloc.outState.listen((state) {
      switch (state) {
        case LoginState.SUCCESS:
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const TelaSeletoraLocador(),
            ),
          );
          break;
        case LoginState.FAIL:
          showDialog(context: context, builder: (context) => AlertDialog(
            title: const Text("Falha ao logar"),
            content: const Text("Usuário ou senha inválido!"),
            actions: <Widget>[
              // define os botões na base do dialogo
              MaterialButton(
                textColor: Colors.red,
                child: const Text("Fechar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ));
          break;
        case LoginState.LOADING:
        case LoginState.IDLE:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<LoginState>(
        stream: _loginBloc.outState,
        initialData: LoginState.LOADING,
        builder: (context, snapshot) {
          switch (snapshot.data!) {
            case LoginState.LOADING:
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Colors.pinkAccent,
                  ),
                ),
              );
            case LoginState.FAIL:
            case LoginState.SUCCESS:
            case LoginState.IDLE:
              return Column(children: [
                Container(
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
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InputField(
                            icon: Icons.person_outline,
                            label: 'E-mail',
                            hint: 'ex: nome@dominio.com',
                            obscure: false,
                            stream: _loginBloc.outEmail,
                            onChanged: _loginBloc.changeEmail,
                          ),
                          /*TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder:
                            UnderlineInputBorder(borderSide: BorderSide(width: 1)),
                            labelText: 'E-mail',
                            hintText: '',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (text) {
                            if (text!.isEmpty || !text.contains('')) {
                              return 'E-mail inválido';
                            }
                            return null;
                          }),*/
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InputField(
                            icon: Icons.lock_outline,
                            label: 'Senha',
                            hint: 'Digite sua senha',
                            obscure: true,
                            stream: _loginBloc.outPassword,
                            onChanged: _loginBloc.changePassword,
                          ),
                          /*TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder:
                          UnderlineInputBorder(borderSide: BorderSide(width: 1)),
                          labelText: 'Senha',
                          hintText: 'Digite sua senha',
                        ),
                        obscureText: true,
                        validator: (text) {
                          if (text!.isEmpty || text.length < 2) {
                            return 'Senha inválida';
                          }
                          return null;
                        }, //validator: (text),
                      ),*/
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TelaEsqueciMinhaSenha()),
                                );
                              },
                              child: const Text(
                                'Esqueci minha senha',
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ),
                        ),
                        StreamBuilder<bool>(
                            stream: _loginBloc.outSubmitValid,
                            builder: (context, snapshot) {
                              return Padding(
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
                                          offset: const Offset(1,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: SizedBox(
                                      height: 35,
                                      child: OutlinedButton(
                                        onPressed: snapshot.hasData
                                            ? _loginBloc.submit
                                            : null,
                                        style: OutlinedButton.styleFrom(
                                            //elevation: 18,
                                            backgroundColor: snapshot.hasData
                                                ? Colors.white
                                                : Colors.pinkAccent
                                                    .withAlpha(80),
                                            minimumSize: const Size(300, 35),
                                            side: const BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  216, 0, 255, 1),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            )),
                                        child: const Text(
                                          "Login",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromRGBO(216, 0, 255, 1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
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
                                            color:
                                                Color.fromRGBO(125, 0, 254, 1)),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
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
              ]);
          }
        },
      ),
    );
  }
}
