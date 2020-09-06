import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sliders')),
        body: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              children: <Widget>[
                _createSlider(),
                _createCheckBox(),
                _createSwitch(),
                Expanded(child: _createImage()),
              ],
            )));
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_blockCheck)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _createCheckBox() {
    // return Checkbox(
    //   value: _blockCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       _blockCheck = value;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _blockCheck,
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider de otra forma'),
      activeColor: Colors.red,
      activeTrackColor: Colors.green,
      inactiveThumbColor: Colors.yellow,
      inactiveTrackColor: Colors.blue,
      value: _blockCheck,
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://vignette.wikia.nocookie.net/southpark/images/1/14/AwesomeO06.jpg/revision/latest/scale-to-width-down/340?cb=20100310004846'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }
}
