import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardFirstType(),
          SizedBox(height: 30.0),
          _cardSecondType(),
          SizedBox(height: 30.0),
          _cardFirstType(),
          SizedBox(height: 30.0),
          _cardSecondType(),
          SizedBox(height: 30.0),
          _cardFirstType(),
          SizedBox(height: 30.0),
          _cardSecondType(),
          SizedBox(height: 30.0),
          _cardFirstType(),
          SizedBox(height: 30.0),
          _cardSecondType(),
          SizedBox(height: 30.0),
          _cardFirstType(),
          SizedBox(height: 30.0),
          _cardSecondType(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardFirstType() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Título de tarjeta'),
            subtitle: Text(
                'Aquí estamos con la descripción de esta tarjeta, debe de tener un texto bastante largo para ver que onda'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(child: Text('Cancelar'), onPressed: () {}),
              FlatButton(child: Text('Ok'), onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardSecondType() {
    return Card(
      elevation: 10.0,
      // Funciona para que todos los elementos dentro de la card respeten las propiedades de la misma (Ejemplo la imagen)
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //     image: NetworkImage(
          //         'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg')),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('Poner un texto'))
        ],
      ),
    );
  }
}
