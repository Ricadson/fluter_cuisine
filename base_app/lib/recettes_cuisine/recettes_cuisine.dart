import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Recette_Francaise extends StatefulWidget {
  const Recette_Francaise({super.key});

  @override
  State<Recette_Francaise> createState() => _Recette_FrancaiseState();
}

class _Recette_FrancaiseState extends State<Recette_Francaise> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('francaises').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recettes francaises'),
      ),
      body: Center(
        child: StreamBuilder<QuerySnapshot>(
          stream: _usersStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailFrance(
                          finaldetail: '',
                        );
                      }));
                    },
                    title: Text(data['nom']),
                    subtitle: Text(data['ingredient']),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}

class DetailFrance extends StatelessWidget {
  final String finaldetail;
  const DetailFrance({super.key, required this.finaldetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text('hello'),
      ],
    ));
  }
}
