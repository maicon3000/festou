import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class TelaCadastroEspaco extends StatefulWidget {
  TelaCadastroEspaco({Key? key}) : super(key: key);

  @override
  State<TelaCadastroEspaco> createState() => _TelaCadastroEspacoState();
}

class _TelaCadastroEspacoState extends State<TelaCadastroEspaco> {

  final _formKey = GlobalKey<FormState>();

  final List<String> items = [
    'Kids',
    'Debut',
    'Cha',
    'Reuniao',
  ];

  String? selectedValue;

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> _menuItems = [];
    for (var item in items) {
      _menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
        ],
      );
    }
    return _menuItems;
  }

  List<double> _getCustomItemsHeights() {
    List<double> _itemsHeights = [];
    for (var i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        _itemsHeights.add(40);
      }
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _itemsHeights.add(4);
      }
    }
    return _itemsHeights;
  }

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
        Expanded(
          child: Form(
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
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        labelText: 'Nome do espaço',
                        hintText: 'Digite o nome do seu espaço',
                      ),
                      validator: (text) {
                        if (text!.isEmpty) return 'CPJ/CNPJ invalido';
                        return null;
                      }),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: Text(
                                'Selecione o tipo',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).hintColor,
                                ),
                              ),
                              items: _addDividersAfterItems(items),
                              customItemsHeights: _getCustomItemsHeights(),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                              buttonHeight: 40,
                              dropdownMaxHeight: 200,
                              buttonWidth: 250,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextFormField(
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                    )),
                                labelText: 'Preço(por hora)',
                                hintText: 'Digite o preço',
                              ),
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'Digite em BRL';
                                }
                                return null;
                              }),
                        ),
                      ),
                    ],
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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => TelaCadastroEspaco()),
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
                                    builder: (context) => TelaCadastroEspaco()),
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
          ),
        ),
      ]),
    );
  }
}