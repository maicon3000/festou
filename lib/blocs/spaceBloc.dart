import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SpaceBloc extends BlocBase {

  late String categoryId;
  //late DocumentSnapshot space;

  SpaceBloc({required this.categoryId, /*required this.space*/}) {

  }

  @override
  void dispose() {

  }



}