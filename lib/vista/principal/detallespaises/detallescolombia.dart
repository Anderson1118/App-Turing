// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class colombiade extends StatelessWidget {
  final String colombiaImagePath;
  final String colombiaName;
  final String rutac;

  colombiade({
    required this.colombiaImagePath,
    required this.colombiaName,
    required this.rutac,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 15,right: 15, bottom: 15,), //tamaño de las cajas
      child: Container(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 10,bottom:20,),
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(244, 211, 204, 204),
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
                    Navigator.pushNamed(context, rutac);
                  },
                  child: Ink.image(
                    image: AssetImage(colombiaImagePath),
                    height: 300,
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
                    colombiaName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ver Mas',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 100, 114, 98)),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                       Navigator.pushNamed(context, rutac);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
