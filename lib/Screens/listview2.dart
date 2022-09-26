import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  const Listview2({Key? key}) : super(key: key);

final options = const['Megaman', 'Metal', 'supermash', 'Finalfantasy'];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 2'),
      ),
      body: ListView.separated(
      itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text( options[index]),
          trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: ( _ , __ ) => const Divider(),


      ),
    );
  }


}