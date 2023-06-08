class ImageModel {
  final String id;
  final String identificacaoCultura;
  final String pragasDoencas;
  final String nutrientes;
  final String irrigacao;
  final String recomendacao;
  final String url;
  final String date;
  final double latitude;
  final double longitude;

  ImageModel(
      {required this.id,
      required this.url,
      required this.date,
      required this.identificacaoCultura,
      required this.pragasDoencas,
      required this.nutrientes,
      required this.irrigacao,
      required this.recomendacao,
      required this.latitude,
      required this.longitude});
}

List<ImageModel> imageList = [
  ImageModel(
      id: '1',
      identificacaoCultura: 'Trigo',
      pragasDoencas: ' Presença de pulgões e ferrugem do trigo',
      nutrientes: 'Baixa disponibilidade de nitrogênio no solo',
      irrigacao: 'Necessidade de irrigação moderada',
      recomendacao:
          'Aplicar um inseticida para controlar os pulgões e um fungicida para combater a ferrugem. Fornecer adubação nitrogenada para corrigir a deficiência. Gerenciar cuidadosamente a irrigação, fornecendo água suficiente, mas evitando o encharcamento.',
      latitude: -23.550520,
      longitude: -46.633308,
      url:
          '../../images/trigo.jpg',
      date: '2023-04-23'),
  ImageModel(
      id: '2',
      identificacaoCultura: 'Laranjas',
      pragasDoencas: 'Presença de cochonilhas e greening dos citros',
      nutrientes: 'Baixa disponibilidade de fósforo no solo',
      irrigacao: 'Necessidade de irrigação regular',
      recomendacao:
          'Aplicar um inseticida específico para controlar as cochonilhas e adotar medidas de manejo integrado para combater o greening. Realizar adubação fosfatada para corrigir a deficiência. Monitorar a umidade do solo e fornecer irrigação adequada para garantir o suprimento de água necessário.',
      latitude: -22.9068,
      longitude: -43.1729,
      url:
          '../../images/laranja.jpg',
      date: '2023-04-30'),
  ImageModel(
      id: '3',
      identificacaoCultura: 'Tomates',
      pragasDoencas: 'Presença de pulgões e míldio',
      nutrientes: 'Baixa disponibilidade de potássio no solo',
      irrigacao: 'Necessidade de irrigação regular e constante',
      recomendacao:
          'Utilizar um inseticida seletivo para controlar os pulgões e aplicar um fungicida eficaz contra o míldio. Realizar adubação potássica para corrigir a deficiência. Monitorar de perto o sistema de irrigação e garantir que os tomates recebam água suficiente e regular.',
      latitude: -20.2976,
      longitude: -40.2929,
      url:
          '../../images/tomates.jpg',
      date: '2023-05-17'),
  ImageModel(
      id: '4',
      identificacaoCultura: 'Soja',
      pragasDoencas: 'Presença de lagartas e nematoides',
      nutrientes: 'Baixa disponibilidade de fósforo e zinco no solo',
      irrigacao: 'Necessidade de irrigação moderada',
      recomendacao:
          'Aplicar um inseticida eficaz contra as lagartas e adotar práticas de manejo integrado para controlar os nematoides. Fornecer adubação fosfatada e zinco para corrigir as deficiências. Monitorar o status de umidade do solo e fornecer irrigação adequada, evitando o estresse hídrico.',
      latitude: -19.9167,
      longitude: -43.9406,
      url:
          '../../images/soja.jpg',
      date: '2023-05-21'),
  ImageModel(
      id: '5',
      identificacaoCultura: 'Café',
      pragasDoencas: 'Presença de broca e ferrugem do café',
      nutrientes: 'Baixa disponibilidade de magnésio no solo',
      irrigacao: 'Necessidade de irrigação moderada',
      recomendacao:
          'Aplicar medidas de controle integrado para combater a broca e utilizar fungicidas para controlar a ferrugem. Fornecer adubação com magnésio para corrigir a deficiência. Gerenciar a irrigação cuidadosamente, fornecendo água suficiente, mas evitando o encharcamento',
      latitude: -18.8800,
      longitude: -41.9700,
      url:
          '../../images/cafe.jpg',
      date: '2023-06-03'),
];
