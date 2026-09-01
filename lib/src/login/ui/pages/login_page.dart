import 'package:flutter/material.dart';
import 'package:loans/src/utils/ui/dimens.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _icon(size),
            _form(size),
          ],
        ),
      ),
    );
  }

  Widget _icon(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height * 0.3,
      child: Icon(
        Icons.money,
        color: Colors.green,
        size: 60,
      ),
    );
  }

  Widget _form(Size size) {
    return Container(
      padding: EdgeInsets.all(32),
      width: size.width,
      height: size.height * 0.7,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(70))),
      child: Column(
        children: [
          _title('Iniciar sesión'),
          _textBox('Email', 'Ingrese su correo', size),
          _textBox('Contraseña', 'Ingrese su contraseña', size),
          _checkbox(size),
          _button('Ingresar', size),
          _text('¿Olvidaste tu contraseña? Presione aquí.'),
        ],
      ),
    );
  }

  Widget _title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }

  Widget _textBox(String title, String hintText, Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: size.height * 0.13,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade200, width: 1),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  blurRadius: 3,
                  offset: const Offset(0, 2))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: hintText, border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _checkbox(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: size.height * 0.08,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade200, width: 1),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  blurRadius: 3,
                  offset: const Offset(0, 2))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text('Mantener sesión')
          ],
        ),
      ),
    );
  }

  Widget _button(String text, Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: size.width,
        height: size.height * 0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: Colors.black),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _text(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
