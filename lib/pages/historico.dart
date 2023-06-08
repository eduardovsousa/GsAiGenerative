import 'package:flutter/material.dart';
import '../models/mock.dart';
import 'detalhesImagem.dart';

class Historico extends StatefulWidget {
  const Historico({Key? key}) : super(key: key);

  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  List<ImageModel> filteredList = [];

  String filterDate = '';
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    filteredList = imageList;
  }

  void applyFilters() {
    setState(() {
      filteredList = imageList.where((image) {
        if (filterDate.isNotEmpty && image.date != filterDate) {
          return false;
        }
        if (searchQuery.isNotEmpty &&
            !image.id.toLowerCase().contains(searchQuery.toLowerCase())) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Imagens'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Buscar por ID',
                    ),
                    onChanged: (value) {
                      searchQuery = value;
                      applyFilters();
                    },
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                final image = filteredList[index];
                return ListTile(
                  title: Text('ID: ${image.id}'),
                  subtitle: Text('Capturado em: ${image.date}'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(image.url),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesImagem(image: image),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
