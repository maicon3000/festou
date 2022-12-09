import 'package:flutter/material.dart';
import 'package:Festou/pages/telaHomeLocatario.dart';
import 'package:Festou/pages/telaInicial.dart';

import 'telaDados.dart';
import 'telaLogin.dart';

class TelaPerfilLocador extends StatelessWidget {
  TelaPerfilLocador({Key? key}) : super(key: key);

  var locaratio = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/item3.jpg'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Espaco Alegria Kids'),
                  Text('Locador', style: TextStyle(fontSize: 10),),
                ],
              )
            ],

          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.chat,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Chats',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            'Minhas conversas',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.notifications,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Notificações',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            'Minhas notificações',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.payment,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Pagamentos',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            'Meus pagamentos',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Favoritos',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            'Meus espaços favoritos',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TelaDados()),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.sim_card,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Dados',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            'Minhas informações da conta',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      locaratio = true;
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TelaHomeLocatario(/*true*/)),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.newspaper,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Alugar um espaço',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            'Meu perfil locatário',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.help,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Ajuda',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.settings,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Configurações',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.security,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Segurança',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 12.0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}