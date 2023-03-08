import 'package:base_app/slidescreen/acceuil.dart';
import 'package:flutter/material.dart';

class Cuisine extends StatefulWidget {
  const Cuisine({super.key});

  @override
  State<Cuisine> createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Recettes Francaises',
      'image': 'https://recette.supertoinette.com/151572/b/couscous-royal.jpg',
    },
    {
      'title': 'Recettes africaines',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/cuisine-du-monde/afrique/767074-5-fre-FR/Afrique.jpg',
    },
    {
      'title': 'Recettes allemandes',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/recettes-allemandes/86212715-1-fre-FR/Recettes-allemandes.jpg',
    },
    {
      'title': 'Recettes anglaises',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/cuisine-du-monde/english-breakfast/168376-11-fre-FR/Recettes-anglaises.jpg',
    },
    {
      'title': 'Recettes argentines',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/recettes-argentines/86322803-2-fre-FR/Recettes-argentines.jpg',
    },
    {
      'title': 'Recettes Haitiennes',
      'image':
          'https://i.pinimg.com/236x/e1/fa/27/e1fa27ffeec8bd11a8e07118316c0cdb--page--change-.jpg',
    },
    {
      'title': 'Recettes chinoises',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/cuisine-du-monde/special-chine/168363-13-fre-FR/Recettes-chinoises.jpg'
    },
    {
      'title': 'Recettes antillaises',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/cuisine-du-monde/special-antilles/168367-7-fre-FR/Special-Antilles.jpg'
    },
    {
      'title': 'Recettes brésiliennes',
      'image':
          'https://resize-elle.ladmedia.fr/r/300,388,center-middle,forcex,ffffff/img/var/plain_site/storage/images/elle-a-table/fiches-cuisine/tous-les-themes/recettes-bresiliennes/86318951-1-fre-FR/Recettes-bresiliennes.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[120],
          title: Text('Recette du monde '),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: ListTile(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Acceuil();
                      }));
                    }
                  },
                  leading: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(items[index]['image']),
                          fit: BoxFit.cover),
                    ),
                  ),
                  title: Text(
                    "${items[index]['title']}".toUpperCase(),
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 103, 142, 173),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }));
  }
}
