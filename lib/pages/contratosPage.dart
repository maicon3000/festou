import 'package:flutter/material.dart';
class ContratosPage extends StatefulWidget {
  const ContratosPage({Key? key}) : super(key: key);

  @override
  State<ContratosPage> createState() => _ContratosPageState();
}

class _ContratosPageState extends State<ContratosPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Contratos',
        style: TextStyle(fontSize: 20.0),
      ),

    );
  }
}
