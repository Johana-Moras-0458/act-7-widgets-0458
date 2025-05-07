import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget064State createState() => Widget064State();
}

class Widget064State extends State<PantallaCinco> {
  double _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff18181),
        title: const Text(
          'Pantalla Cinco',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(_currentValue.toString()),
            const SizedBox(height: 50),
            RepaintBoundary(
              // Envuelve el CupertinoSlider con RepaintBoundary
              child: CupertinoSlider(
                value: _currentValue,
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (selectedValue) {
                  setState(() {
                    _currentValue = selectedValue;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
