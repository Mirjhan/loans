import 'package:flutter/material.dart';

enum SettingsItemEnum {
  cambiarCorreo(icon: Icons.message, title: 'Cambiar correo'),
  cambiarContrasena(icon: Icons.password, title: 'Cambiar contraseña'),
  verTutorial(icon: Icons.videocam_outlined, title: 'Ver tutorial'),
  chat(icon: Icons.message_outlined, title: 'Chat'),
  cerrarSesion(icon: Icons.exit_to_app_rounded, title: 'Cerrar sesión'),
  salir(icon: Icons.fullscreen_exit, title: 'Salir');

  const SettingsItemEnum({required this.icon, required this.title});
  final IconData icon;
  final String title;
}
