import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(
                    Icons.where_to_vote,
                    color: Colors.indigo,
                  ),
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.indigo),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
