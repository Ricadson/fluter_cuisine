import 'package:flutter/material.dart';

class Cuisine extends StatefulWidget {
  const Cuisine({super.key});

  @override
  State<Cuisine> createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Haiti',
      'image':
          'https://i.pinimg.com/236x/e1/fa/27/e1fa27ffeec8bd11a8e07118316c0cdb--page--change-.jpg',
    },
    {
      'title': 'France',
      'image': 'https://recette.supertoinette.com/151572/b/couscous-royal.jpg',
    },
    {
      'title': 'Afrique',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/cuisine-du-monde/afrique/767074-5-fre-FR/Afrique.jpg',
    },
    {
      'title': 'Allemagne',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/recettes-allemandes/86212715-1-fre-FR/Recettes-allemandes.jpg',
    },
    {
      'title': 'Mexique',
      'image': 'https://picsum.photos/203',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[120],
          title: Text('Recette du monde '),
        ),
        body: Center(
          child: Container(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(items[index]['image']),
                      Text(
                        items[index]['title'],
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
