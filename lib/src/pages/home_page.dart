import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  final styleApp = new TextStyle(fontSize: 20);
  int count = 0;


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
            Text('Número de clicks:', style: styleApp),
            Text('$count', style: styleApp),          
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Suma en uno el contador',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }


}