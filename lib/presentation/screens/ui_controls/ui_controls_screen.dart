import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'uicontrols_scren';
  
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body:  const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTrasnportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {

    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Aditionals Controls'),
          value: isDeveloper, 
          onChanged:  ( value ) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        ExpansionTile(
          title: const Text('Vehicule'),
          subtitle: Text('$selectedTrasnportation'),
          children: [
            
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Travel by car'),
              value: Transportation.car,
              groupValue: selectedTrasnportation,
              onChanged: ( value ) => setState( () {
                selectedTrasnportation = Transportation.car;
              }),
            ),

            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Travel by Boat'),
              value: Transportation.boat,
              groupValue: selectedTrasnportation,
              onChanged: ( value ) => setState( () {
                selectedTrasnportation = Transportation.boat;
              }),
            ),

            RadioListTile(
              title: const Text('By Plne'),
              subtitle: const Text('Travel by plane'),
              value: Transportation.plane,
              groupValue: selectedTrasnportation,
              onChanged: ( value ) => setState( () {
                selectedTrasnportation = Transportation.plane;
              }),
            ),

            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Travel by Submarine'),
              value: Transportation.submarine,
              groupValue: selectedTrasnportation,
              onChanged: ( value ) => setState( () {
                selectedTrasnportation = Transportation.submarine;
              }),
            ),
          ],
        ),

        CheckboxListTile(
          title: const Text("Breakfast?"),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          })
        ),

        CheckboxListTile(
          title: const Text("Lunch?"),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          })
        ),

        CheckboxListTile(
          title: const Text("Dinner?"),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          })
        ),
      ],

     
    );
  }
}