import 'package:Festou/pages/InputsCustomizados.dart';
import 'package:Festou/widgets/BotaoCustomizado.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'espaco.dart';

class NovoEspaco extends StatefulWidget {
  const NovoEspaco({Key? key}) : super(key: key);

  @override
  State<NovoEspaco> createState() => _NovoEspacoState();
}

class _NovoEspacoState extends State<NovoEspaco> {
  final List<File> _listaImagens = [];
  final List<DropdownMenuItem<String>> _listaItensDropEstados = [];
  final List<DropdownMenuItem<String>> _listaItensDropCategorias = [];
  final _formKey = GlobalKey<FormState>();
  late String _itemSelecionadoCategoria = '';
  late String _itemSelecionadoEstado = '';
  final picker = ImagePicker();
  File? imagemSelecionada;
  late Espaco _espaco;

  _selecionarImagemGaleria() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    imagemSelecionada = File(pickedFile!.path);

    if (imagemSelecionada != null) {
      setState(() {
        _listaImagens.add(imagemSelecionada!);
      });
    }
  }

  _salvarEspaco() async {

    await _uploadImagens();
    
    print("lista imagens: ${_espaco.fotos.toString()}");
    

  }

  Future _uploadImagens() async{
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference pastaRaiz = storage.ref();

    for (var imagem in _listaImagens){
    int i = 0;

    Reference  arquivo = pastaRaiz
        .child("meus_anuncios")
        .child(_espaco.id)
        .child("image$i");
    i++;

    UploadTask uploadTask = arquivo.putFile(imagem);
    String url = await uploadTask.then((taskSnapshot) => taskSnapshot.ref.getDownloadURL());
    _espaco.fotos.add(url);
    }
  }

  _removerAnuncio(Espaco espaco) async{
    FirebaseFirestore db = FirebaseFirestore.instance;

    db.collection("meus_espacos")
        .doc("img")
        .collection("espacos")
        .doc(espaco.id)
        .delete().then((_) {
      FirebaseStorage storage = FirebaseStorage.instance; //remove imagem

      Reference pastaRaiz = storage.ref();
      for(String foto in espaco.fotos){
        int i = 0;
        Reference  arquivo = pastaRaiz
            .child("espacos")
            .child(espaco.id)
            .child(foto.substring(102, 118));
        arquivo.delete();
        i++;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _carregarItensDropdown();
    _espaco = Espaco();
  }

  static List<DropdownMenuItem<String>> getEstados() {
    List<DropdownMenuItem<String>> listaItensDropEstados = [];

    //Categorias
    listaItensDropEstados.add(const DropdownMenuItem(
      value: null,
      child: Text(
        "Região",
        style: TextStyle(color: Color(0xff9c27b0)),
      ),
    ));

    for (var estado in Estados.listaEstadosSigla) {
      listaItensDropEstados.add(DropdownMenuItem(
        value: estado,
        child: Text(estado),
      ));
    }

    return listaItensDropEstados;
  }

  _carregarItensDropdown() {
    _listaItensDropCategorias.add(
      const DropdownMenuItem(
        value: 'selecione',
        child: Text("Selecione uma categoria"),
      ),
    );

    _listaItensDropCategorias.add(
      const DropdownMenuItem(
        value: 'kids',
        child: Text("Kids"),
      ),
    );

    _listaItensDropCategorias.add(
      const DropdownMenuItem(
        value: 'debute',
        child: Text("Debute"),
      ),
    );

    _listaItensDropCategorias.add(
      const DropdownMenuItem(
        value: 'casamento',
        child: Text("Casamento"),
      ),
    );

    _listaItensDropCategorias.add(
      const DropdownMenuItem(
        value: 'cha',
        child: Text("Chá"),
      ),
    );

    _listaItensDropCategorias.add(
      const DropdownMenuItem(
        value: 'reuniao',
        child: Text("Reunião"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo Espaço"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //area de imagens
                FormField<List>(
                  initialValue: _listaImagens,
                  validator: (imagens) {
                    if (imagens!.isEmpty) {
                      return "Necessário selecionar uma imagem!";
                    }
                    return null;
                  },
                  builder: (state) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _listaImagens.length + 1,
                            itemBuilder: (context, indice) {
                              if (indice == _listaImagens.length) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _selecionarImagemGaleria();
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      radius: 50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add_a_photo,
                                            size: 30,
                                            color: Colors.grey[100],
                                          ),
                                          Text(
                                            "Adicionar",
                                            style: TextStyle(
                                              color: Colors.grey[100],
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              } else if (_listaImagens.isNotEmpty) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => Dialog(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.file(_listaImagens[indice]),
                                              TextButton(
                                                child: const Text(
                                                  "Excluir",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _listaImagens
                                                        .removeAt(indice);
                                                    Navigator.of(context).pop();
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundImage:
                                          FileImage(_listaImagens[indice]),
                                      child: Container(
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 0.4),
                                        alignment: Alignment.center,
                                        child: const Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Container();
                              }
                            },
                          ),
                        ),
                        if (state.hasError)
                          Text(
                            "${state.errorText}",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    );
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(
                          8.0,
                        ),
                        child: DropdownButtonFormField(
                          value: _itemSelecionadoCategoria.isNotEmpty ? _itemSelecionadoCategoria : null,
                          hint: const Text(
                            "Categoria",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          onSaved: (categoria){
                            _espaco.categoria = categoria as String;
                          },
                          items: _listaItensDropCategorias,
                          onChanged: (valor) {
                            setState(() {
                              _itemSelecionadoCategoria = valor!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: InputCustomizado(
                    hint: "Nome do espaço",
                      onSaved: (nomeEspaco){
                        _espaco.nomeEspaco = nomeEspaco as String;
                      }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InputCustomizado(
                    hint: "Preço/h",
                    onSaved: (precoHora){
                      _espaco.precoHora = precoHora as String;
                    },
                    type: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CentavosInputFormatter(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: InputCustomizado(
                          hint: "Cidade",
                            onSaved: (cidade){
                              _espaco.cidade = cidade as String;
                            }
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15.0, left: 10.0),
                        child: DropdownButtonFormField(
                          value: _itemSelecionadoEstado.isNotEmpty ? _itemSelecionadoEstado : null,
                          hint: const Text("UF"),
                          onSaved: (estado){
                            _espaco.estado = estado as String;
                          },
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          items: getEstados(),
                          onChanged: (valor) {
                            setState(() {
                              _itemSelecionadoEstado = valor!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0,),
                  child: InputCustomizado(
                    hint: "Bairro",
                      onSaved: (bairro){
                        _espaco.bairro = bairro as String;
                      }
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: InputCustomizado(
                    hint: "Descrição",
                    onSaved: (descricao){
                      _espaco.descricao = descricao as String;
                    },
                    maxLines: 5,
                  ),
                ),
                BotaoCustomizado(
                  texto: "Cadastrar Espaço",
                  corTexto: Colors.white,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      _salvarEspaco();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
