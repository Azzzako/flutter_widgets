import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.url,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en flutter',
      url: '/buttons',
      icon: Icons.smart_button_outlined),
      
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      url: '/cards',
      icon: Icons.credit_card),

  MenuItem(
      title: 'Progressindicators',
      subtitle: 'Generales y controlados',
      url: '/progress',
      icon: Icons.refresh_rounded),
];
