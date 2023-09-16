import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../blocs/spaceBloc.dart';

class TelaEditarEspaco extends StatefulWidget {
  final String categoryId;
  // DocumentSnapshot space;

  final SpaceBloc _spaceBloc;

  TelaEditarEspaco({super.key, required this.categoryId, /*required this.space*/})
      : _spaceBloc = SpaceBloc(categoryId: categoryId, /*space: space*/);

  @override
  State<TelaEditarEspaco> createState() => _TelaEditarEspacoState();
}

class _TelaEditarEspacoState extends State<TelaEditarEspaco> {
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

    InputDecoration buildDecoration(String label){
      return InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey)
      );
    }

    const fieldStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
    );
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Editar espaço"),
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
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              style: fieldStyle,
              decoration: buildDecoration("Título"),
              onSaved: (t){},
              validator: (t){},
            ),
            TextFormField(
              style: fieldStyle,
              maxLines: 6,
              decoration: buildDecoration("Descrição"),
              onSaved: (t){},
              validator: (t){},
            ),
            TextFormField(
              style: fieldStyle,
              decoration: buildDecoration("Preço"),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              onSaved: (t){},
              validator: (t){},
            ),
            Padding(
              padding: const EdgeInsets.all(16),
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
                        style: fieldStyle,
                        decoration: buildDecoration("Preço"),
                        onSaved: (t){},
                        validator: (t){},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}