import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Viagens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const TelaViagens(),
    );
  }
}

class TelaViagens extends StatelessWidget {
  const TelaViagens({super.key});

  final Color azul = const Color(0xFF2196F3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: azul,
        title: const Text(
          'Viagens',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1552832230-c0197dd311b5',
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Roma',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Coliseu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                botaoAcao(Icons.location_on_outlined, 'Quero Ir'),
                botaoAcao(Icons.verified_outlined, 'Já Fui'),
                botaoAcao(Icons.share, 'Compartilhar'),
                botaoAcao(Icons.star, 'Avaliações'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Fusce id diam id ligula ultrices pulvinar. In neque lectus, '
                'sagittis eu libero et, venenatis lacinia nulla. Etiam eget '
                'purus leo. Nam consectetur ornare est eu lobortis. '
                'Morbi eu augue eu lectus condimentum vestibulum. Etiam '
                'id nibh luctus, porttitor ac est porttitor purus. '
                'Pellentesque vulputate nibh sit amet rutrum viverra. '
                'Nullam eget metus est. Integer condimentum, odio sed '
                'congue malesuada, ipsum nisi bibendum lectus, quis '
                'porttitor ante lacus in mi. Curabitur eget imperdiet ante. '
                'Aliquam magna tortor, volutpat sit amet mi a, cursus '
                'malesuada leo. Aenean dolor erat, gravida ut ultrices sed, '
                'convallis nec ipsum.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pessoas Encontradas',
                    style: TextStyle(
                      color: azul,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.filter_alt, color: azul),
                      Text(
                        'Filtrar',
                        style: TextStyle(
                          color: azul,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  4,
                  (index) => CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey.shade200,
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget botaoAcao(IconData icone, String texto) {
    return Expanded(
      child: InkWell(
        onTap: () {
          debugPrint(texto);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Icon(icone, color: azul, size: 22),
              const SizedBox(height: 4),
              Text(
                texto,
                style: TextStyle(
                  color: azul,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
