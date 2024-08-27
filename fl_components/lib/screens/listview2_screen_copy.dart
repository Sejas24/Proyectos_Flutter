import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'The Last Of Us',
    'Rainbow Six',
    'Valorant',
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 2'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {
            final game = options[i];
            if (kDebugMode) {
              print(game);
            }
          },
        ),
      ),
    );
  }
}
