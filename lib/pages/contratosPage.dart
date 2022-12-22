import 'package:flutter/material.dart';

class ContratosPage extends StatefulWidget {
  const ContratosPage({Key? key}) : super(key: key);

  @override
  State<ContratosPage> createState() => _ContratosPageState();
}

//⭐️
class _ContratosPageState extends State<ContratosPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.contacts),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contratos',
              style: TextStyle(color: Colors.black),
            ),
            Image.asset('assets/images/contrato.png', height: 50,),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [
            ListTile(
              title: Text('Espaco BigBig'),
              subtitle: Text('Espaco Alegria Kids'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
              height: 1.0,
            ),
            ListTile(
              title: Text('Espaco Toboga'),
              subtitle: Text('Espaco Alegria Kids'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
              height: 1.0,
            ),
            ListTile(
              title: Text('Espaco Bonito Altar'),
              subtitle: Text('Espaco Casamentos'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
              height: 1.0,
            ),


          ],
        ),
      ),
    ));
  }
}
