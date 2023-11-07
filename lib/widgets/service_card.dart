import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String imagePath;
  final Function onTap;
  final String cardName;

  ServiceCard({
    required this.imagePath,
    required this.onTap,
    required this.cardName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: SizedBox(
          height: 100,
          width: 100,
          //color: Colors.blue,
          child: Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    imagePath, // Use the provided imagePath
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Center(
                  child: Text(
                    cardName,
                    style: const TextStyle(fontSize: 11),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
