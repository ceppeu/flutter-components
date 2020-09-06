import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: <Widget>[
            Container(
                margin: EdgeInsets.only(right: 12.0),
                padding: EdgeInsets.all(2.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.cinemascomics.com/wp-content/uploads/2018/02/stan-lee-enfermedad.jpg'),
                  radius: 30.0,
                )),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('RA'),
                backgroundColor: Colors.purple,
              ),
            ),
          ],
        ),
        body: Center(
            child: FadeInImage(
                image: NetworkImage(
                    'https://www.cinemascomics.com/wp-content/uploads/2018/02/stan-lee-enfermedad.jpg'),
                placeholder: AssetImage('assets/jar-loading.gif'),
                fadeInDuration: Duration(milliseconds: 200))));
  }
}
