import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ['Opción 1','Opción 2','Opción 3','Opción 4','Opción 5'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 1'),
      ),
      body: ListView(
        children:  [
          ...options.map((game) => ListTile(
              leading: const Icon(Icons.list),
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
            ).toList()
        ],
      )
    );
  }
}