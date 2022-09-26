import 'package:flutter/material.dart';


class AvatarScreen extends StatelessWidget {

  const AvatarScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar(
        title: const Text('Yenny Patricia'),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  CircleAvatar(
              backgroundColor: Colors.red[900],
              child:  const Text('YP'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://thumbs.dreamstime.com/b/caricatura-de-chica-sorprendida-cara-ni%C3%B1a-con-la-boca-que-cubre-mano-personaje-anime-dibujos-animados-adorables-oops-impactados-207009978.jpg'),
        ) ,
      ),
    );
  }


}