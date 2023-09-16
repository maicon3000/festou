import 'package:flutter/material.dart';

class BotaoCustomizado extends StatelessWidget {
  const BotaoCustomizado(
      {Key? key, required this.texto, this.corTexto, this.onPressed})
      : super(key: key);

  final String texto;
  final Color? corTexto;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          foregroundColor: const Color(0xff9c27b0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16)),
      child: Text(
        texto,
        style: TextStyle(
          color: corTexto,
          fontSize: 20,
        ),
      ),
    );
  }
}
