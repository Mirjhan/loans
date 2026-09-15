import 'package:flutter/material.dart';
import 'package:loans/src/utils/ui/dimens.dart';

import 'package:loans/src/utils/widgets/app_bar_widget.dart';

class CustomerPage extends StatelessWidget {
  CustomerPage({super.key});
  final List customers = [
    {'name': 'Mirjhan', 'phone': '987654321'},
    {'name': 'Estefany', 'phone': '986123456'},
    {'name': 'Norma', 'phone': '985654321'},
    {'name': 'Mirjhan', 'phone': '987654321'},
    {'name': 'Estefany', 'phone': '986123456'},
    {'name': 'Norma', 'phone': '985654321'},
    {'name': 'Mirjhan', 'phone': '987654321'},
    {'name': 'Estefany', 'phone': '986123456'},
    {'name': 'Norma', 'phone': '985654321'},
    {'name': 'Mirjhan_____', 'phone': '987654321'},
    {'name': 'Estefany', 'phone': '986123456'},
    {'name': 'Norma', 'phone': '985654321'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget(title: 'Clientes'),
        body: Column(
          children: [
            _search('Qué cliente desea buscar?', Icons.search),
            _listCustomers()
          ],
        ),
        floatingActionButton: buttonAdd());
  }

  FloatingActionButton buttonAdd() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }

  Widget _search(String hintText, IconData prefixIconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(prefixIconData),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }

  Widget _listCustomers() {
    return Expanded(
      child: ListView.builder(
          itemCount: customers.length,
          itemBuilder: (context, index) {
            final customer = customers[index];
            return _itemListTile(
                title: customer['name'], subtitle: customer['phone']);
          }),
    );
  }

  Widget _itemListTile({required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: Colors.grey)),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: _trailing(),
        ),
      ),
    );
  }

  Widget _trailing() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [Icon(Icons.call), Icon(Icons.message)],
    );
  }
}
