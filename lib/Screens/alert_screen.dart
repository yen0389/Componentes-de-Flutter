import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: false,
        context: context,
        builder: ( context ) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la Alerta'),
                SizedBox( height: 10),
                FlutterLogo( size: 100)
              ],
            ),
            actions: [

              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar', style: TextStyle( color: Colors.indigo),)
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok')
              )
            ],
          );
        }
    );

  }

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
        context: context,
        builder: ( context ){
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la Alerta'),
              SizedBox( height: 10),
              FlutterLogo( size: 100)
            ],
          ),
          actions: [

            TextButton(
            onPressed: () => Navigator.pop(context),

                child: const Text('Cancelar')
            ),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok')
            ),
          ],
        );
        }
    );

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:  Center(
        child: ElevatedButton(
            //style: ElevatedButton.styleFrom(
            //    primary: Colors.indigo,
            //    shape: StadiumBorder(),
            //  elevation: 0
            // ),
          child:  const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
            child: Text('Mostrar Alerta', style: TextStyle( fontSize: 20)),
          ),
          //onPressed: () => displayDialogAndroid( context ),
          onPressed: () => Platform.isAndroid
              ? displayDialogAndroid( context )
              : displayDialogIOS( context )

        )
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)

      ),
    );
  }


}