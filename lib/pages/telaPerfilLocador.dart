import 'package:flutter/material.dart';
import 'package:tela_1/pages/telaInicial.dart';

import 'telaDados.dart';
import 'telaLogin.dart';

class TelaPerfilLocador extends StatelessWidget {
  TelaPerfilLocador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.chat,
                        color: Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Chats'),
                          Text('Chats'),
                          Container(
                              color: Colors.green,
                              child: Divider(color: Colors.black)),
                        ],
                      ),
                      /*Text(
                        'Chats',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),*/

                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.black,
                          ),
                          Text('Notificações'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.payment,
                            color: Colors.black,
                          ),
                          Text('Pagamentos'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Text('Favoritos'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TelaDados()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sim_card,
                            color: Colors.black,
                          ),
                          Text('Dados'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.newspaper,
                            color: Colors.black,
                          ),
                          Text('Alugar um espaço'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //usando ListTile
                Container(
                  child: ListTile(
                    onTap: () {},
                    isThreeLine: true,
                    leading: Icon(
                      Icons.help,
                      color: Colors.black,
                    ),
                    title: Text('Ajuda'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Minhas conversas'),
                      ],
                    ),

                    trailing: Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.black,
                    ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.security,
                            color: Colors.black,
                          ),
                          Text('Segurança'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
