import 'package:Festou/pages/telaCadastroEspaco.dart';
import 'package:Festou/pages/telaConfirmacaoSenhaEspaco.dart';
import 'package:Festou/pages/telaEditarEspaco.dart';
import 'package:Festou/pages/telaEspaco.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'myImageView.dart';

class TelaHomeLocador extends StatefulWidget {
  const TelaHomeLocador({Key? key}) : super(key: key);

  @override
  State<TelaHomeLocador> createState() => _TelaHomeLocadorState();
}

class _TelaHomeLocadorState extends State<TelaHomeLocador> {
  int currentPos = 0;

  List<String> listPaths = [
    "assets/images/festa.png",
    "assets/images/festa2.png",
    "assets/images/festa3.png",
    "assets/images/festa4.png",
  ];

  List<String> listPaths2 = [
    "assets/images/salao1.png",
    "assets/images/salao2.png",
    "assets/images/salao3.png",
    "assets/images/salao4.png",
  ];

  List<String> listPaths3 = [
    "assets/images/salao5.png",
    "assets/images/salao6.png",
    "assets/images/salao7.png",
    "assets/images/salao8.png",
  ];

  late DocumentSnapshot _snapshot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 30.0,
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
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  Image.asset("assets/images/background.gif"),
                  Image.asset("assets/images/background.gif"),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Meus espaços cadastrados',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 25, //feio
                      child: FloatingActionButton(
                        backgroundColor: Colors.green,
                        elevation: 0,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TelaEspaco(
                                categoryId: '',
                                //space: _snapshot,
                              ),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //EXPANDED PARA A LISTVIEW PEGAR O RESTANTE E N DAR OVERFLOW
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: InkWell(
                        splashColor: Colors.red.withAlpha(100),
                        onTap: () {},
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.25,
                              child: Swiper(
                                itemCount: 4,
                                autoplay: true,
                                pagination: const SwiperPagination(),
                                itemBuilder: (context, index) {
                                  return MyImageView(listPaths2[index]);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Espaço Alegria Kids'),
                                  Text("R\$250,00/h"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Rua Maria da Graca, 123 - 21123-123\nMaria da Graca, Rio de janeiro',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.garage,
                                          color: Colors.black,
                                        ),
                                        Icon(
                                          Icons.fastfood,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      height: 18,
                                      //width
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => TelaEditarEspaco(
                                                categoryId: '',
                                                //space: _snapshot,
                                              ),
                                            ),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                            const Color.fromRGBO(125, 0, 254, 1),
                                            minimumSize: const Size(50, 45),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0),
                                            )),
                                        child: const Text('Editar'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: InkWell(
                        splashColor: Colors.red.withAlpha(100),
                        onTap: () {},
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.25,
                              child: Swiper(
                                itemCount: 4,
                                autoplay: true,
                                pagination: const SwiperPagination(),
                                itemBuilder: (context, index) {
                                  return MyImageView(listPaths2[index]);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Espaço Alegria Kids'),
                                  Text("R\$450,00/h"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Rua Maria da Graca, 123 - 21123-123\nMaria da Graca, Rio de janeiro',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.severe_cold,
                                          color: Colors.black,
                                        ),
                                        Icon(
                                          Icons.garage,
                                          color: Colors.black,
                                        ),
                                        Icon(
                                          Icons.fastfood,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      height: 18,
                                      //width
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                            const Color.fromRGBO(125, 0, 254, 1),
                                            minimumSize: const Size(50, 45),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0),
                                            )),
                                        child: const Text('Editar'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: InkWell(
                        splashColor: Colors.red.withAlpha(100),
                        onTap: () {},
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.25,
                              child: Swiper(
                                itemCount: 4,
                                autoplay: true,
                                pagination: const SwiperPagination(),
                                itemBuilder: (context, index) {
                                  return MyImageView(listPaths2[index]);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Espaço Alegria Kids'),
                                  Text("R\$200,00/h"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Rua Maria da Graca, 123 - 21123-123\nMaria da Graca, Rio de janeiro',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.severe_cold,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      height: 18,
                                      //width
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                            const Color.fromRGBO(125, 0, 254, 1),
                                            minimumSize: const Size(50, 45),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0),
                                            )),
                                        child: const Text('Editar'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
