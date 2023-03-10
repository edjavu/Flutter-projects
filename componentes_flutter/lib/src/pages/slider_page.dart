import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  //const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlide(),
            _crearCheckbox(),
            _crearSwitch(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlide() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      max: 400.0,
      min: 10.0,
      value: 100.0, 
      onChanged: (_bloquearCheck) ? null : (double valor){
        setState(() {
          _valorSlider = valor;
        });
      }
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _bloquearCheck, 
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearCheck = valor!;  
    //     });
    //   }
    // );

    return CheckboxListTile(
      title: const Text('Bloquear Slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor!;  
        });
      }
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: const Text('Bloquear Slider'),
      value: _bloquearCheck, 
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );
  }
}