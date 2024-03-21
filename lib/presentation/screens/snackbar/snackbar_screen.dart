import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
        content: const Text('Hola mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: (){}),
        duration: const Duration(seconds: 2),
        );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Eu ut ex quis enim reprehenderit veniam sunt tempor minim adipisicing cupidatat et ullamco. Veniam exercitation mollit eu id incididunt irure magna voluptate ad. Elit non minim culpa occaecat excepteur veniam. Amet laborum deserunt occaecat incididunt nisi ea sit nisi sit enim dolor incididunt in veniam. Eu occaecat laborum in non duis eiusmod ea laborum do. Enim nostrud ullamco ad est. Dolor do sint laboris ipsum consectetur culpa veniam.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: (){}, child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Deserunt et adipisicing qui ea magna ullamco mollit ad eiusmod officia. Pariatur sunt occaecat elit ipsum qui mollit. Nisi veniam cillum fugiat nisi.')
                  ]
                  );
              }, 
              child: const Text('Licencias usadas')
              ),

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar dialogos en pantalla')
              ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
