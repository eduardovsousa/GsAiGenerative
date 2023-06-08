import 'package:flutter/material.dart';

import '../models/mock.dart';
import '../theme/customAppBar.dart';
import 'detalhesImagem.dart';

class GaleriaDeImagens extends StatelessWidget {
  const GaleriaDeImagens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title:
              'Histórico de Registros'), // Utilize o CustomAppBar personalizado
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Plantas em Monitoramento: 5',
            style: TextStyle(
              color: Color.fromRGBO(255, 50, 99, 1),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                final image = imageList[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(image.url),
                  ),
                  title: Text(
                    'ID: ${image.id} | Latitude: ${image.latitude} | Longitude: ${image.longitude}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Capturado em: ${image.date}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                  iconColor: Colors.black,
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
