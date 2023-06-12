import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  
  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hello, World'),
      action: SnackBarAction( label: 'Ok!', onPressed: () {} ),
      duration: const Duration( seconds:  2 ),
    );

    ScaffoldMessenger.of(context).showSnackBar( snackbar );
  }

  void openDialog( BuildContext context ) {

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: ( context ) => AlertDialog(
        title: const Text('Are you sure?'),
        content:  const Text('Lorem ipsum'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancel') ),

          FilledButton(onPressed: () => context.pop(), child: const Text('Acept') )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar and Dialogs'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Culpa occaecat consequat ut fugiat')
                  ]
                );
              }, child:  const Text('Used Licences'),
            ),

             FilledButton.tonal(
              onPressed: () => openDialog( context ), child:  const Text('Show dialogs'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined ),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}