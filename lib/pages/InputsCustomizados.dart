import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCustomizado extends StatelessWidget {

  final TextEditingController? controller;
  final String hint;
  final bool obscure;
  final bool autofocus;
  final TextInputType type;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final FormFieldValidator<String>? onSaved;


  const InputCustomizado({
    super.key,
    this.controller,
    required this.hint,
    this.obscure = false,
    this.autofocus = false,
    this.type = TextInputType.text,
    this.maxLines,
    this.inputFormatters,
    this.validator,
    this.onSaved
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      autofocus: autofocus,
      keyboardType: type,
      inputFormatters: inputFormatters,
      validator: validator,
      maxLines: maxLines,
      onSaved: onSaved,
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(16, 16, 32, 16),
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6)
          )
      ),
    );
  }
}
