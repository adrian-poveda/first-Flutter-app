
import 'package:first_app/src/pages/counter.dart';
import 'package:flutter/material.dart';

import 'package:first_app/src/pages/home_page.dart';

class MyFirstApp extends StatelessWidget{

  @override
  Widget build( context ) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: CounterPage(),
      )
      
    );
  }
}