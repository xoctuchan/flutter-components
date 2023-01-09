import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text ('Body'),
              SizedBox(height: 10),
              FlutterLogo( size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Ok')
            ),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Cancelar', style: TextStyle( color: Colors.red),)
            )
          ]
        );
      }
    );
  }
  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false, //cerrar el dialogo al hacer clic en la sombra
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text ('Body'),
              SizedBox(height: 10),
              FlutterLogo( size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Ok')
            ),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Cancelar', style: TextStyle( color: Colors.red),)
            )
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()=>Platform.isAndroid?displayDialogAndroid(context):displayDialogIOS(context), 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 20)),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: (){
            Navigator.pop(context);
          }
        ),
    );
  }
}