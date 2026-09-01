import 'package:flutter/material.dart';
import 'package:loans/src/utils/ui/dimens.dart';
import 'package:loans/src/utils/ui/short_cut_enum.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Text('Bienvenido'),
                  Text(
                    'correoelectronico@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Digite su contraseña para iniciar sesión!'),
                  SizedBox(height: 100),
                  _textBox('Contraseña', 'Ingresar contraseña'),
                  _text('Ingresar con otro usuario', Colors.lightBlue),
                  _continueButton(),
                  SizedBox(height: 100),
                  _shortCuts(),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _text(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: FontWeight.w500),
    );
  }

  Widget _textBox(String title, String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
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

  Widget _continueButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: Colors.black),
              child: Center(
                child: Text(
                  'Continuar',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: Center(
              child: Icon(
                Icons.fingerprint,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _shortCuts() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '-Accesos directos-',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: ShortCutEnum.values.map((shortcut) {
              return Column(
                children: [Icon(shortcut.icon), Text(shortcut.label)],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
