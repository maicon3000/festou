import 'package:flutter/material.dart';
class TelaBuscar extends StatefulWidget {
  const TelaBuscar({Key? key}) : super(key: key);

  @override
  State<TelaBuscar> createState() => _TelaBuscarState();
}

class _TelaBuscarState extends State<TelaBuscar> {
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
