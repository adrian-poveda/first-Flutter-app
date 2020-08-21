import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }

}


class _CounterPageState extends State<CounterPage>{

  final _styleApp = new TextStyle(fontSize: 20);
  int _count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('First Fultter App'),
        centerTitle: true,
      ),
      body: Center(        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks:', style: _styleApp),
            Text('$_count', style: _styleApp),          
          ],
        )
      ),
      floatingActionButton: _createButtons()
    );
  }

  Widget _createButtons(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _clearCounter,
        ),
        Expanded(
          child: SizedBox(
            width: 5,
          )
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restCounter,
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _sumCounter,
        )
      ],
    );
  }

  void _sumCounter() {
    setState(() {
      _count++;
    });
  }

  void _restCounter() {
    setState(() {
      _count--;
    });
  }

  void _clearCounter() {
    setState(() {
      _count = 0;
    });
  }

}