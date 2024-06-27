// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class home2 extends StatelessWidget {
  final String home2ImagePath;
  final String home2Name;

  home2({
    required this.home2ImagePath,
    required this.home2Name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 1.0,
        bottom: 10,
      ), //tamaño de las cajas
      child: Container(
        padding:
            const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 20),
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 224, 223, 223),
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 228, 225, 225)
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Container(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Ink.image(
                    image: AssetImage(home2ImagePath),
                    height: 250,
                    width: 370.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    home2Name,
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: const Text(
                      "Ver mas",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 87, 84, 84),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
