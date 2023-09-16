import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../blocs/espacoBloc.dart';

class TelaEspaco extends StatefulWidget {
  final String idCategoria;
  final DocumentSnapshot espaco;

  TelaEspaco({super.key, required this.idCategoria, required this.espaco});

  @override
  _TelaEspacoState createState() => _TelaEspacoState(idCategoria, espaco);
}

class _TelaEspacoState extends State<TelaEspaco> {
  final EspacoBloc _espacoBloc;
  final _formKey = GlobalKey<FormState>();

  _TelaEspacoState(String idCategoria, DocumentSnapshot espaco)
      : _espacoBloc = EspacoBloc(idCategoria: idCategoria, espaco: espaco);

  @override
  State<TelaEspaco> createState() => _TelaEspacoState();
}

class _TelaEspacoState extends State<TelaEspaco> {
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
  Widget build(context) {
    InputDecoration buildDecoration(String label) {
      return InputDecoration(
          labelText: label, labelStyle: const TextStyle(color: Colors.grey));
    }

    const fieldStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
    );
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Cadastrar espaço"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.restore_from_trash),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: StreamBuilder<Map>(
          stream: _espacoBloc.outData,
          builder: (context, snapshot) {
            if(!snapshot.hasData) return Container();
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                TextFormField(
                  initialValue: snapshot.data!["title"],
                  style: fieldStyle,
                  decoration: buildDecoration("Título"),
                  onSaved: (t) {},
                  validator: (t) {},
                ),
                TextFormField(
                  initialValue: snapshot.data!["description"],
                  style: fieldStyle,
                  maxLines: 6,
                  decoration: buildDecoration("Descrição"),
                  onSaved: (t) {},
                  validator: (t) {},
                ),
                TextFormField(
                  initialValue: snapshot.data!["price"]?.toStringAsFixed(2),
                  style: fieldStyle,
                  decoration: buildDecoration("Preço"),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  onSaved: (t) {},
                  validator: (t) {},
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}