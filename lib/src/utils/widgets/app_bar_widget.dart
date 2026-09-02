import 'package:flutter/material.dart';

AppBar appBarWidget(
        {required String title,
        List<Widget>? actions,
        bool centerTitle = true,
        bool isBack = false}) =>
    AppBar(
      title: Text(title),
      centerTitle: centerTitle,
      elevation: 1,
      shadowColor: Colors.grey,
      actions: actions,
      automaticallyImplyLeading: isBack,
    );
