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
                )),
            Expanded(
                flex: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ))
          ],
        ),
        Container(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home:HomePage() ,
            //home: TempPage(),
          ),
        ),
      ],
    );
  }
}
