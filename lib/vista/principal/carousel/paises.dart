// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class paises extends StatelessWidget {
  final String paisesImagePath;
  final String paisesName;
  final String rutap;

  paises({
    required this.paisesImagePath,
    required this.paisesName,
    required this.rutap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 8.0), 
      child: Container(
        padding: EdgeInsets.all(5),
        width: 200,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color.fromARGB(59, 27, 84, 190), Color.fromARGB(0, 32, 119, 153), Color.fromARGB(59, 27, 84, 190)]
                ),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, rutap);
                },
                child: Ink.image(
                  image: AssetImage(paisesImagePath),
                  height: 100,
                  width: 200,
                  fit: BoxFit.cover,
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
                    paisesName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
