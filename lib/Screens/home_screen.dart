import 'package:ejemploseccion6/Screens/listview1.dart';
import 'package:ejemploseccion6/router/app_routes.dart';
import 'package:ejemploseccion6/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:ejemploseccion6/Screens/screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en Flutter')),

      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon( menuOptions[index].icon, color: AppTheme.primary,),
          title:  Text( menuOptions[index].name ),
          onTap: () {

             //final route = MaterialPageRoute(
             //   builder: (context) => const Listview1()
            //;
           //Navigator.push(context, route);
            Navigator.pushNamed(context, menuOptions[index].route);

          },
        ),
        separatorBuilder: ( _, __) => const Divider(),
        itemCount: menuOptions.length
      )
      );
  }
}