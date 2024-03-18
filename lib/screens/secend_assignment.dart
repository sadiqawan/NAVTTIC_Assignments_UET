import 'package:flutter/material.dart';

class SecondAssignment extends StatelessWidget {
  const SecondAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          const IconButton(onPressed: null, icon: Icon(Icons.ac_unit)),
          const SizedBox(
            width: 20,
          )
        ],
      ),

      body: Center(
        child: Container(
          height: 200,
          width: 250,
          decoration: BoxDecoration(
              // color: Colors.amberAccent,
              border: Border.all(color: Colors.red,width: 10)
          ),
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star, color: Colors.greenAccent,
                    ),
                    Icon(
                      Icons.star,color: Colors.greenAccent
                    ),
                    Icon(
                      Icons.star,
                    ),
                    Icon(
                      Icons.star,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('170 Reviews')
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.padding,color: Colors.green),
                        SizedBox(
                          height: 10,
                        ),
                        Text('PREP:'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('25 min'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.timer,color: Colors.green),
                        SizedBox(
                          height: 10,
                        ),
                        Text('CLOCK:'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('25 min'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.restaurant,color: Colors.green),
                        SizedBox(
                          height: 10,
                        ),
                        Text('FEEDS:'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('25 min'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),

      // body: Center(
      //   child: Container(
      //       height: 150,
      //       width: 400,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15),
      //           boxShadow: const [BoxShadow(blurRadius: 10)],
      //           gradient: const LinearGradient(
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //               colors: [
      //                 Colors.yellow,
      //                 Colors.greenAccent,
      //                 Colors.blue,
      //               ])),
      //       child: const Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //
      //         children: [
      //           Row(
      //             children: [
      //               Icon(
      //                 Icons.face,
      //                 size: 30,
      //               ),
      //               Icon(
      //                 Icons.face,
      //                 size: 30,
      //               ),
      //               Icon(
      //                 Icons.face,
      //                 size: 30,
      //               ),
      //               Icon(
      //                 Icons.face,
      //                 size: 30,
      //               ), Icon(
      //                 Icons.face,
      //                 size: 30,
      //               ),
      //             ],
      //           ),
      //           SizedBox(
      //             width: 20,
      //           ),
      //           Text(' Hi😊this is Awan! ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      //
      //         ],
      //       )),
      // ),
    );
  }
}
