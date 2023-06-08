import 'package:flutter/material.dart';
import 'package:gsaigenerative/theme/backgroundImagePage.dart';

import 'pages/historico.dart';
import 'pages/home.dart';
import 'pages/galeriaDeImagens.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImagePage(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AI Farming Monitoring',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent, appBarTheme: theme),
        home: const Home(),
        routes: {
          '/home': (context) => const Home(),
          '/galeriaDeImagens': (context) => const GaleriaDeImagens(),
          '/historico': (context) => const Historico(),
        },
      ),
    );
  }
}
