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
      title: 'Riverpod Counter Screen',
      subtitle: 'Introduccion a Riverpod',
      url: '/counter_screen',
      icon: Icons.plus_one),
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
  MenuItem(
      title: 'Snackbars y Dialogs',
      subtitle: 'Snackbars y dialogos',
      url: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Stateful widget w/ animation',
      url: '/animated',
      icon: Icons.animation_outlined),
  MenuItem(
      title: 'UI Controls',
      subtitle: 'Controles en flutter',
      url: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introduccion a la App',
      subtitle: 'Pequeno tutorial de la app',
      url: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Infinite-scroll y Pull',
      subtitle: 'Listas Inifinitas y Pull to Refresh',
      url: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Theme Changer',
      subtitle: 'Cambio de Tema de manera dinamica',
      url: '/theme-changer',
      icon: Icons.palette_outlined),
];
