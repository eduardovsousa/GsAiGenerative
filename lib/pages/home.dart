import 'package:flutter/material.dart';

import 'historico.dart';
import 'galeriaDeImagens.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Farming Monitoring'),
      ),
      drawer: Drawer(
        shadowColor: Colors.white,
        backgroundColor: const Color.fromRGBO(255, 50, 99, 0.8),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Tela Inicial'),
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              title: const Text('Galeria de Imagens'),
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GaleriaDeImagens()),
                );
              },
            ),
            ListTile(
              title: const Text('Histórico'),
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Historico()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao\nAI Farming Monitoring',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(255, 50, 99, 1),
                shadows: [
                  Shadow(
                    color: Colors.grey.withOpacity(0.6),
                    offset: const Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(255, 50, 99, 1),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GaleriaDeImagens()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Text('Ir para galeria '),
                      Icon(Icons.camera_alt_outlined),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(255, 50, 99, 1),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Historico()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Text('Ir para o histórico '),
                      Icon(Icons.history),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
