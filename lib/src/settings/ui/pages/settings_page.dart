import 'package:flutter/material.dart';
import 'package:loans/src/utils/ui/settings_item_enum.dart';

import 'package:loans/src/utils/widgets/app_bar_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Ajustes'),
      body: ListView.builder(
        itemCount: SettingsItemEnum.values.length,
        itemBuilder: (context, index) {
          final item = SettingsItemEnum.values[index];
          return ListTile(
            leading: Icon(item.icon),
            title: Text(item.title),
          );
        },
      ),
    );
  }
}
