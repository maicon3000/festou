import 'package:flutter/material.dart';

class MeusEspacos extends StatefulWidget {
  const MeusEspacos({Key? key}) : super(key: key);

  @override
  State<MeusEspacos> createState() => _MeusEspacosState();
}

class _MeusEspacosState extends State<MeusEspacos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus espaços"),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.pushNamed(context, "/novo-espaco");
        },
      ) ,
      body: Container(),
    );
  }
}
