import 'package:cat_navigator/data/cats.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cats')),
      body: ListView(
        children: [
          for (final cat in cats)
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(cat.name),
              ),
              leading: Image.network(cat.imageUrl),
              onTap: () {
                //TODO: impinge ruta de CatPage
              },
            )
        ],
      ),
    );
  }
}
