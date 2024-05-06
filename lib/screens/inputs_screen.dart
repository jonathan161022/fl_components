import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                // autofocus: true,
                // initialValue: 'Jonathan Calderon',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {},
                validator: (value) {
                  if (value == null) return 'Este Campo es requerido';
                  return value.length < 3 ? 'Mínimo de 3 letras.' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Nombre de Usuario',
                    labelText: 'Nombre',
                    helperText: 'Solo letras',
                    // counterText: '3 caracteres'
                    prefixIcon: Icon(Icons.verified_user_rounded),
                    suffixIcon: Icon(Icons.supervised_user_circle),
                    icon: Icon(Icons.admin_panel_settings),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
