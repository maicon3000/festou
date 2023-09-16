import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
