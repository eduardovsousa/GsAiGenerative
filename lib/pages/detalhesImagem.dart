// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../models/mock.dart';
import '../theme/customAppBar.dart';

class DetalhesImagem extends StatelessWidget {
  final ImageModel image;

  const DetalhesImagem({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Imagem Detalhada do Registro'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image.url,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8, right: 4),
                      child: Text(
                        'ID: ${image.id}',
                      ),
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 4, right: 8),
                      child: Text(
                        '|  Cultura: ${image.identificacaoCultura}',
                      ),
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Row(
                        children: [
                          const Icon(Icons.bug_report_outlined),
                          const SizedBox(width: 8),
                          Text(
                            'Pragas/Doenças: ${image.pragasDoencas}',
                          ),
                        ],
                      ),
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Row(
                        children: [
                          const Icon(Icons.heart_broken_rounded),
                          const SizedBox(width: 8),
                          Text(
                            'Nutrientes: ${image.nutrientes}',
                          ),
                        ],
                      ),
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Row(
                        children: [
                          const Icon(Icons.water_drop_outlined),
                          const SizedBox(width: 8),
                          Text(
                            'Irrigação: ${image.irrigacao}',
                          ),
                        ],
                      ),
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 8, right: 12),
                      child: Row(
                        children: [
                          const Icon(Icons.recommend),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              'Recomendação: ${image.recomendacao}',
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
