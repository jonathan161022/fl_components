import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomInputWidget(
                labelText: 'Nombre',
                hintText: 'Nombre de Usuario',
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputWidget(
                labelText: 'Apellido',
                hintText: 'Apellido de Usuario',
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputWidget(
                labelText: 'Correo',
                hintText: 'Correo de Usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputWidget(
                labelText: 'Contraseña',
                hintText: 'Contraseña de Usuario',
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
