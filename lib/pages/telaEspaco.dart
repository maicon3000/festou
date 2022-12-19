import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../blocs/spaceBloc.dart';

class TelaEspaco extends StatelessWidget {
  final String categoryId;
  // DocumentSnapshot space;

  final SpaceBloc _spaceBloc;

  final _formKey = GlobalKey<FormState>();

  TelaEspaco({super.key, required this.categoryId, /*required this.space*/})
      : _spaceBloc = SpaceBloc(categoryId: categoryId, /*space: space*/);

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
          ],
        ),
      ),
    );
  }
}
