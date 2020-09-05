import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes temp')),
      body: ListView(children: _createItemShort()),
    );
  }

  // List<Widget> _createItems() {
  //   List<Widget> list = new List<Widget>();

  //   for (String opt in options) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     list..add(tempWidget)..add(Divider());
  //   }
  //   return list;
  // }

  List<Widget> _createItemShort() {
    return options.map((item) {
      return Column(
        children: [
          ListTile(
              title: Text(item),
              subtitle: Text('Cualquier cosa'),
              leading: Icon(Icons.accessible_forward),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {}),
          Divider()
        ],
      );
    }).toList();
  }
}
