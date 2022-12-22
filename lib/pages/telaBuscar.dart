import 'package:flutter/material.dart';

class BuscaPage extends StatefulWidget {
  const BuscaPage({Key? key}) : super(key: key);

  @override
  State<BuscaPage> createState() => _BuscaPageState();
}

//⭐️
class _BuscaPageState extends State<BuscaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Flexible(
              child: TextFormField(
                enableInteractiveSelection: false,
                decoration: const InputDecoration(
                  labelText: 'Buscar',
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ), // icon is 48px widget.
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(216, 0, 255, 1),
                  )),
                  hintText: 'Digite o espaco',
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Espaco BigBig'),
                  subtitle: Text('Espaco Alegria Kids'),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Espaco Toboga'),
                  subtitle: Text('Espaco Alegria Kids'),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Espaco Bonito Altar'),
                  subtitle: Text('Espaco Casamentos'),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
