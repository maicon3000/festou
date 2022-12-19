import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final IconData? icon;
  final String? label;
  final String? hint;
  final bool obscure;
  final Stream<String>? stream;
  final Function(String)? onChanged;

  const InputField({super.key, this.label, this.icon, this.hint, required this.obscure, this.stream, this.onChanged});


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            icon: Icon(icon, color: Colors.purple,),
            labelText: label,
            labelStyle: const TextStyle(color: Colors.purple),
            hintText: hint,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.purple)
            ),
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
          style: const TextStyle(color: Colors.pink),
          obscureText: obscure,
        );
      }
    );
  }
}