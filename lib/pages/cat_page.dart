import 'package:cat_navigator/models/cat.dart';
import 'package:flutter/material.dart';

class CatPage extends StatefulWidget {
  const CatPage({super.key, required this.cat});

  final Cat cat;

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Image.network(widget.cat.imageUrl),
            Text(
              widget.cat.name,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.cat.description,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                //TODO: go back to the previous page.
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
