import 'package:cloud_firestore/cloud_firestore.dart';

class Espaco {

  late String _id;
  late String _categoria;
  late String _nomeEspaco;
  late String _precoHora;
  late String _cidade;
  late String _estado;
  late String _bairro;
  late String _descricao;
  late List<String> _fotos;

  Espaco() {
    
    FirebaseFirestore db = FirebaseFirestore.instance;
    CollectionReference espacos = db.collection("meus-espacos");
    id = espacos.doc().id;

    fotos = [];
  }

  List<String> get fotos => _fotos;

  set fotos(List<String> value) {
    _fotos = value;
  }

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }

  String get bairro => _bairro;

  set bairro(String value) {
    _bairro = value;
  }

  String get estado => _estado;

  set estado(String value) {
    _estado = value;
  }

  String get cidade => _cidade;

  set cidade(String value) {
    _cidade = value;
  }

  String get precoHora => _precoHora;

  set precoHora(String value) {
    _precoHora = value;
  }

  String get nomeEspaco => _nomeEspaco;

  set nomeEspaco(String value) {
    _nomeEspaco = value;
  }

  String get categoria => _categoria;

  set categoria(String value) {
    _categoria = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}