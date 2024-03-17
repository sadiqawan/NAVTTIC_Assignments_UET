import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
          height: 200,
          width: 400,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const  LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.tealAccent,
              Colors.blue,
              Colors.red,
            ])
          ),
          child:const  Center(
            child: Text('Hello' ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          ),
        ),

      ),
    );
  }
}
