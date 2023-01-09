import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {

  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map <String, String> formValues ={};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(inputType: TextInputType.name, labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(inputType: TextInputType.name, labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(inputType: TextInputType.emailAddress, labelText: 'Correo', hintText: 'Correo del usuario', formProperty: 'email_name', formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Password', hintText: 'Password', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperUser',child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer',child: Text('Jr. Developer')),
                  ],
                  onChanged: (value){
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  ),
                  onPressed: (){ 
                    //FocusScope.of(context).requestFocus(FocusNode());
                    FocusManager.instance.primaryFocus?.unfocus();
                      if(!myFormKey.currentState!.validate()){
                        print('formulario no valido');
                        return;
                      }
                      print(formValues);
                    }
                )
                //CustomInputField(),
              ],
            ),
          )
        ),
      ),
    );
  }
}

