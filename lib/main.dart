import 'package:flutter/material.dart';

void main() {
  runApp(const MonApp());
}

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: pageAccueil(),
    );
  }
}

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Magazine Infos'),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),

        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: const Column(
        children: [
          Image(image: AssetImage('assets/images/Magazine2.jpeg')),
          PartieTitre(),
          Partietext(),
          PartieIcones(),
          PartieRubriques(),
        ],
      ),

      //floatingActionButton: FloatingActionButton(
      //  onPressed: () {},
      //child: const Icon(Icons.add),
      //backgroundColor: Colors.pink,
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Largeur du conteneur
      height: 100, // Hauteur du conteneur
      color: Colors.blue,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue au Magazine Infos',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            'Votre source d\'informations fiable et captivante',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class Partietext extends StatelessWidget {
  const Partietext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Le Magazine Infos est dédié à vous fournir les dernières nouvelles, analyses approfondies et articles captivants sur une variété de sujets. Que vous soyez passionné par l\'actualité, la culture, la science ou le divertissement, nous avons quelque chose pour vous. Notre équipe de journalistes expérimentés travaille sans relâche pour vous apporter des informations précises et pertinentes.',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class PartieIcones extends StatelessWidget {
  const PartieIcones({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.thumb_up, color: Colors.pink),
                const SizedBox(height: 5),
                Text(
                  'Tel'.toUpperCase(),
                  style: const TextStyle(color: Colors.pink),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.comment, color: Colors.pink),
                const SizedBox(height: 5),
                Text(
                  'Mail'.toUpperCase(),
                  style: const TextStyle(color: Colors.pink),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.share, color: Colors.pink),
                const SizedBox(height: 5),
                Text(
                  'Partage'.toUpperCase(),
                  style: const TextStyle(color: Colors.pink),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PartieRubriques extends StatelessWidget {
  const PartieRubriques({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const Image(
              image: AssetImage('assets/images/rubrique1.jpeg'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const Image(
              image: AssetImage('assets/images/rubrique2.jpeg'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
