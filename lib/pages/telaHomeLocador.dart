import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
      body: Stack(
        children: [
          Image.asset("assets/images/background.gif"),
          Column(
            children: [

              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CarouselSlider.builder(
                  itemCount: listPaths.length,
                  options: CarouselOptions(
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentPos = index;
                        });
                      }),
                  itemBuilder: (BuildContext context, int index, nullable) {
                    return MyImageView(listPaths[index]);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listPaths.map((url) {
                  int index = listPaths.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPos == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(255, 255, 255, 0.2),
                    ),
                  );
                }).toList(),
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
                          Container(
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: CarouselSlider.builder(
                                itemCount: listPaths.length,
                                options: CarouselOptions(
                                    autoPlay: true,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        currentPos = index;
                                      });
                                    }),
                                itemBuilder: (BuildContext context, int index, nullable) {
                                  return MyImageView(listPaths[index]);
                                },
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: listPaths.map((url) {
                              int index = listPaths.indexOf(url);
                              return Container(
                                width: 6.0,
                                height: 6.0,
                                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentPos == index
                                      ? Color.fromRGBO(125, 0, 254, 1)
                                      : Color.fromRGBO(1, 1, 1, 0.1),
                                ),
                              );
                            }).toList(),
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
        ],),
    );
  }
}