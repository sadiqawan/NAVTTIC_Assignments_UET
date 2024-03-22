import 'package:flutter/material.dart';

class ButtonsTypes extends StatelessWidget {
  const ButtonsTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Button'),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Center(child: ElevatedButton(onPressed: (){}, child:  const Text('MyBTN'))),

        ],
      ),
    );
  }
}
