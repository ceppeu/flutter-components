import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Page')),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
      body: Center(
        child: RaisedButton(
            shape: StadiumBorder(),
            child: Text('Mostrar Alerta'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () => _showAlert(context)),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              title: Text('Título'),
              content: Column(
                // Adapta el tamaño al contenido
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Contenido de la caja de alerta'),
                  FlutterLogo(size: 100.0),
                ],
              ),
              actions: <Widget>[
                FlatButton(
                    child: (Text('Cancelar')),
                    onPressed: () => Navigator.of(context).pop()),
                FlatButton(
                    child: (Text('Ok')),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ]);
        });
  }
}
