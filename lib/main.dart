import 'package:flutter/material.dart';
import 'package:otithee_com_clone/pages/home_page.dart';
//import 'package:otithee_com_clone/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            Expanded(
              flex: 2,

              child: Image.asset(
                'assets/images/img_1.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              )
              // child: Container(
              //   //height: 94,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: const BoxDecoration(
              //     color: Colors.yellow,
              //     image: DecorationImage(
              //       image: AssetImage('assets/images/img_1.png'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
            ),
            Expanded(
                flex: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ))
          ],
        ),
        Container(
          //height: 20,
          //color: Color.fromARGB(92, 244, 67, 54),
          //child: Text('data'),
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomePage()),
        ),
      ],
    );
  }
}
