import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String , String> formValues = {
      'first_name' : 'Yenny',
      'last_name'  : 'Mendez',
      'email'      : 'yenny@google.com',
      'contraseña' : '123456',
      'role'       : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Inputs y Forms')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [
                 CustomInputField( labelText: 'Nombre', hintText: 'Nombre de Usuario', formProperty: 'firstname', formValues: formValues, ),
                const SizedBox( height: 30 ),

                CustomInputField( labelText: 'Apellido', hintText: 'Apellido del Usuario',  formProperty: 'lastname', formValues: formValues, ),
                const SizedBox( height: 30 ),

                CustomInputField( labelText: 'Email', hintText: 'Email del Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues, ),
                const SizedBox( height: 30 ),

                CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del Usuario', obscureText: true, formProperty: 'contraseña', formValues: formValues, ),
                const SizedBox( height: 30 ),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                    items: const[
                      DropdownMenuItem( value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem( value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem( value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem( value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ],
                  onChanged: ( value) {
                      print( value );
                      formValues[ 'role'] = value ?? 'Admin';
                  },
                ),


                ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {

                      FocusScope.of(context).requestFocus( FocusNode());

                      if ( !myFormKey.currentState!.validate() )  {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);

                    },

                )



              ],
            ),
          ),
        ),
      )
    );
  }


}
