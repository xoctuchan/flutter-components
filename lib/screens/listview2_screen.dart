import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const ['Opción 1','Opción 2','Opción 3','Opción 4','Opción 5'];

  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.list, color: Colors.indigo),
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
              onTap: (){
                final option = options[index];
                print (option);
              },
            ), 
          separatorBuilder: ( _, __ ) => const Divider(), 
          itemCount: options.length
        )
    );
  }
}