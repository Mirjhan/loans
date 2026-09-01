import 'package:flutter/material.dart';

enum ShortCutEnum {
  analiticas(Icons.analytics_outlined, 'Analíticas'),
  semanaActual(Icons.calendar_month_outlined, 'Semana actual'),
  nuevoPrestamo(Icons.post_add, 'Nuevo préstamo'),
  resumenPagos(Icons.description_outlined, 'Resumen pagos'),
  vencidos(Icons.calendar_month, 'Vencidos'),
  nuevoCliente(Icons.person_add_alt_1_outlined, 'Nuevo cliente');

  const ShortCutEnum(this.icon, this.label);
  final IconData icon;
  final String label;
}
