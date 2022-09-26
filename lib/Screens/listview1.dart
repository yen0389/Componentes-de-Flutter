import 'package:flutter/material.dart';

class Listview1 extends StatelessWidget {
  const Listview1({Key? key}) : super(key: key);

final options = const['Megaman', 'Metal', 'supermash', 'Finalfantasy'];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
      ),
      body: ListView(
        children: [


          ...options.map(
                  (game) =>  ListTile(
                    title: Text( game ),
                    trailing: const Icon( Icons.arrow_forward_ios_outlined),
                  )
          ).toList(),


        ],
      )
    );
  }


}