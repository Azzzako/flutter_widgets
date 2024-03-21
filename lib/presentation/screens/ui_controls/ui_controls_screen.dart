import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDev = true;
  Transportation selectedTRansportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Dev Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDev,
            onChanged: (value) => setState(() {
                  isDev = !isDev;
                })),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTRansportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTRansportation,
              onChanged: (value) => setState(() {
                selectedTRansportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar por bote'),
              value: Transportation.boat,
              groupValue: selectedTRansportation,
              onChanged: (value) => setState(() {
                selectedTRansportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.plane,
              groupValue: selectedTRansportation,
              onChanged: (value) => setState(() {
                selectedTRansportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTRansportation,
              onChanged: (value) => setState(() {
                selectedTRansportation = Transportation.submarine;
              }),
            )
          ],
        ),
        CheckboxListTile(
          title: const Text('Quiere desayuno?'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
          wantsBreakfast = !wantsBreakfast;
        })),CheckboxListTile(
          title: const Text('Quiere Almuerzo?'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
          wantsLunch = !wantsLunch;
        })),CheckboxListTile(
          title: const Text('Quiere Cena?'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
          wantsDinner = !wantsDinner;
        })),
      ],
    );
  }
}
