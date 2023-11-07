import 'package:flutter/material.dart';

class BlogCards extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final Function onTap;

  const BlogCards({
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: GestureDetector(
          onTap: () {
            onTap();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    fit:
                        BoxFit.fill, // Fill the entire container with the image
                  ),
                ),
              ),
              Text(title),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(subTitle, style: const TextStyle(fontSize: 12)),
              )
            ],
          ),
        ));
  }
}
