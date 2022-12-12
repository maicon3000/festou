import 'package:Festou/pages/telaCadastroEspaco.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'myImageView.dart';

class TelaHomeLocatario extends StatefulWidget {
  const TelaHomeLocatario({Key? key}) : super(key: key);

  @override
  State<TelaHomeLocatario> createState() => _TelaHomeLocatarioState();
}

class _TelaHomeLocatarioState extends State<TelaHomeLocatario> {
  int currentPos = 0;

  List<String> listPaths = [
    "assets/images/festou-logo.png",
    "assets/images/item1.png",
    "assets/images/item2.png",
    "assets/images/item3.jpg",
  ];

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
            ), Text('Rua Maria da Graça, 123, Maria da Graça - RJ',
                style: TextStyle(fontSize: 12.0,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [Column(
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
                              builder: (context) => TelaCadastroEspaco(),),);
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
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(100),
                        onTap: () {},
                        child: Column(children: [
                          SizedBox(
                            height: 300.0,
                            child: Swiper(
                              itemCount: 4,
                              pagination: const SwiperPagination(),
                              autoplay: true,
                              itemBuilder: (context, index) {
                                return MyImageView(listPaths[index]);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Espaço Alegria Kids'),
                              Text('preço'),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  const Color.fromRGBO(125, 0, 254, 1),
                                  minimumSize: const Size(50, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )),
                              child: const Text('Editar'),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(100),
                        onTap: () {},
                        child: Column(children: [
                          SizedBox(
                            height: 300.0,
                            child: Swiper(
                              itemCount: 4,
                              pagination: const SwiperPagination(),
                              autoplay: true,
                              itemBuilder: (context, index) {
                                return MyImageView(listPaths[index]);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Espaço Alegria Kids'),
                              Text('preço'),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  const Color.fromRGBO(125, 0, 254, 1),
                                  minimumSize: const Size(50, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )),
                              child: const Text('Editar'),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(100),
                        onTap: () {},
                        child: Column(children: [
                          SizedBox(
                            height: 300.0,
                            child: Swiper(
                              itemCount: 4,
                              pagination: const SwiperPagination(),
                              autoplay: true,
                              itemBuilder: (context, index) {
                                return MyImageView(listPaths[index]);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Espaço Alegria Kids'),
                              Text('preço'),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  const Color.fromRGBO(125, 0, 254, 1),
                                  minimumSize: const Size(50, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )),
                              child: const Text('Editar'),
                            ),
                          ),
                        ]),
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