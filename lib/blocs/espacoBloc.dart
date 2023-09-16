import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';

class EspacoBloc extends BlocBase {

  final _dataController = BehaviorSubject<Map>();

  Stream<Map> get outData => _dataController.stream;

  String idCategoria;
  DocumentSnapshot? espaco;

  Map<String, dynamic>? unsavedData;

  EspacoBloc({required this.idCategoria, this.espaco}) {
    if (espaco != null) {
      unsavedData = Map.of(espaco?[0]);
      unsavedData?["images"] = List.of(espaco?["images"]);
      unsavedData?["sizes"] = List.of(espaco?["sizes"]);
    } else {
      unsavedData = {
        "title": null,
        "description": null,
        "price": null,
        "images": [],
        "sizes": []
      };
      _dataController.add(unsavedData!);
      print(unsavedData);
    }

    @override
    void dispose() {
      super.dispose();
      _dataController.close();
    }
  }
}