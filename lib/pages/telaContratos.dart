import 'package:flutter/material.dart';
class TelaContratos extends StatefulWidget {
  const TelaContratos({Key? key}) : super(key: key);

  @override
  State<TelaContratos> createState() => _TelaContratosState();
}

class _TelaContratosState extends State<TelaContratos> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Contratos',
        style: TextStyle(fontSize: 20.0),
      ),

    );
  }
}
