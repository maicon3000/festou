import 'package:flutter/material.dart';
class BuscaPage extends StatefulWidget {
  const BuscaPage({Key? key}) : super(key: key);

  @override
  State<BuscaPage> createState() => _BuscaPageState();
}

class _BuscaPageState extends State<BuscaPage> {
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
