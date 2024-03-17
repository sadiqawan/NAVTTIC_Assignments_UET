import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class FirstAssignment extends StatelessWidget {
  const FirstAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gradients'),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 400,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const  LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.yellow,
              Colors.greenAccent,
              Colors.blue,
            ])
          ),
          child:const  Center(
            child: Text('Hello World\n This is a new package',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          ),
        ),

      ),
    );
  }
}
