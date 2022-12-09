import 'package:flutter/material.dart';

class TelaHomeLocatario extends StatefulWidget {
  const TelaHomeLocatario({Key? key}) : super(key: key);

  @override
  State<TelaHomeLocatario> createState() => _TelaHomeLocatarioState();
}

class _TelaHomeLocatarioState extends State<TelaHomeLocatario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Meus espaços cadastrados',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 25, //feio
                  child: FloatingActionButton(
                    backgroundColor: Colors.green,
                    elevation: 0,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(//EXPANDED PARA A LISTVIEW PEGAR O RESTANTE E N DAR OVERFLOW
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: [
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(100),
                    onTap: () {},
                    child: Column(children: [
                      Container(
                        //alignment: Alignment.center,
                        color: Colors.purple,
                        child: Image.asset('assets/images/festou-logo.png',
                            width: 100.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Espaço Alegria Kids'),
                            Text('preço'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Rua Maria da Graca, 123 - 21123-123\nMaria da Graca, Rio de janeiro',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        height: 18,
                        //width
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Editar'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromRGBO(125, 0, 254, 1),
                              minimumSize: Size(50, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                        ),
                      ),
                    ]),
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/images/festou-logo.png',
                            width: 100.0),
                      ),
                      ListTile(
                        title: Text('1'),
                        subtitle: Text('2'),
                        trailing: Icon(Icons.star),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(100),
                    onTap: () {},
                    child: Column(children: [
                      Container(
                        //alignment: Alignment.center,
                        color: Colors.purple,
                        child: Image.asset('assets/images/festou-logo.png',
                            width: 100.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Espaço Alegria Kids'),
                            Text('preço'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Rua Maria da Graca, 123 - 21123-123\nMaria da Graca, Rio de janeiro',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        height: 18,
                        //width
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Editar'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromRGBO(125, 0, 254, 1),
                              minimumSize: Size(50, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                        ),
                      ),
                    ]),
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/images/festou-logo.png',
                            width: 100.0),
                      ),
                      ListTile(
                        title: Text('1'),
                        subtitle: Text('2'),
                        trailing: Icon(Icons.star),
                      ),
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
