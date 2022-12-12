import 'package:card_swiper/card_swiper.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Image.asset('assets/images/background.gif'),
              ),
              Image.asset('assets/images/background.gif'),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Swiper(
                      itemCount: 4,
                      pagination: const SwiperPagination(),
                      autoplay: true,
                      itemBuilder: (context, index) {
                        return MyImageView(listPaths[index]);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: Colors.red,
                        child: Image.asset("assets/images/toys.png", alignment: Alignment.centerLeft),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: Colors.blue,
                        child: Image.asset("assets/images/quinze.png", alignment: Alignment.centerLeft),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: Colors.green,
                        child: Image.asset("assets/images/buque.png", alignment: Alignment.centerLeft),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: Colors.yellow,
                        child: Image.asset("assets/images/cha.png", alignment: Alignment.centerLeft),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: Colors.red,
                        child: Image.asset("assets/images/reuniao.png", alignment: Alignment.centerLeft),
                      ),
                    ],
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
                          child: Row(
                            children: const [
                              Icon(
                                Icons.arrow_right_outlined,
                                color: Colors.black,
                              )
                            ],
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
                    splashColor: Colors.blue.withAlpha(100),
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
                              return MyImageView(listPaths3[index]);
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
                      ],
                    ),
                  ),
                ),
                Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(100),
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
                      ],
                    ),
                  ),
                ),
                Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(100),
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
                              return MyImageView(listPaths3[index]);
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
                      ],
                    ),
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
