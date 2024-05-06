import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Tipo 1')),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    leading: const Icon(Icons.where_to_vote),
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ))
              ,
          // ListTile(
          //   leading: Icon(Icons.where_to_vote),
          //   title: Text('Hola Mundo'),
          // ),
        ],
      ),
    );
  }
}
