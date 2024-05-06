import 'dart:io';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialosgIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Título'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta.'),
                SizedBox(
                  height: 20,
                ),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar')),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('Título'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta.'),
                SizedBox(
                  height: 20,
                ),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isWindows
              ? displayDialogAndroid(context)
              : displayDialosgIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mostrar Alerta',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
