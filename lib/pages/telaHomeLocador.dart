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
    "assets/images/festou-logo.png",
    "assets/images/item1.png",
    "assets/images/item2.png",
    "assets/images/item3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          ListView(
            children: [
              Image.asset('assets/images/background.gif'),
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
                      child: Image.asset("assets/images/festou-logo.png"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.blue,
                      child: Image.asset("assets/images/google-logo.png"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.green,
                      child: Image.asset("assets/images/item1.png"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.yellow,
                      child: Image.asset("assets/images/smile.png"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.red,
                      child: Image.asset("assets/images/festou-logo.png"),
                    ),
                  ],
                ),
              ),
                  //backgrtound
                  Card(
                    margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                    margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                    margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                  )
                ],
              ),
        ),
    ],
      ),
    );
  }
}
