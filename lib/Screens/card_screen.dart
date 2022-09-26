
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'package:ejemploseccion6/widgets/widgets.dart';


class CardScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widgets'),
      ),
     body: ListView(
       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
       children: const [

         CustomCardType1(),
         SizedBox( height: 20 ),
         CustomCardType2( name: 'Paisaje', imageUrl: 'https://www.lukas-petereit.com/wp-content/uploads/2017/10/Rakotzbr%C3%BCcke-Bridge-Rakotz-Kromlau-Lake-Sun-Sunrise-Landscape-Reflection-Germany-Saxony-Travel-Photography-Nature-Photo-Spreewald-2.jpg'),
         SizedBox( height: 20 ),
         CustomCardType2( name: 'Primavera', imageUrl: 'https://media-exp1.licdn.com/dms/image/C4D1BAQFsdjpzrtQWUA/company-background_10000/0/1519796755846?e=2147483647&v=beta&t=tA2WEp7x9015ge1Px-zpkFFUueL-uskh1SlXHTBCXrM',),
         SizedBox( height: 20 ),
         CustomCardType2( name: 'Noche', imageUrl: 'https://cdn.theatlantic.com/media/img/photo/2020/11/top-shots-2020-international-landsc/a01_Yuen_MagicalNight-1/original.jpg'),
         SizedBox( height: 20 ),
         CustomCardType2( name: 'Atardecer',  imageUrl: 'https://petapixel.com/assets/uploads/2022/08/notlandscapes.jpg'),
         SizedBox( height: 100),
       ],
     )
    );
  }
  
  
}
