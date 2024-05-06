import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.abc,
              color: AppTheme.primary,
            ),
            title: Text('Soy un tipo'),
            subtitle: Text(
                'Lorenshd g sdg dfg df df df g  fg dg fdg d gfd  dfg dg  dfg dg gf g'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // padding: const EdgeInsets.only(8.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
