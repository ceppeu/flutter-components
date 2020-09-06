import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _listView(),
    );
  }

  Widget _listView() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _itemList(snapshot.data, context));
      },
    );
  }

  List<Widget> _itemList(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.purple[300]),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
            // final route = MaterialPageRoute(builder: (context) => AlertPage());
            // Navigator.push(context, route);
          });
      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}
