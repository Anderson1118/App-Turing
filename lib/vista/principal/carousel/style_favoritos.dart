// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class favorito extends StatelessWidget {
  final String favoritoImagePath;
  final String favoritoName;

  favorito({
    required this.favoritoImagePath,
    required this.favoritoName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 10,
      ), //tamaño de las cajas
      child: Container(
        padding: const EdgeInsets.only(
          right: 10,
          left: 20,
          top: 10,
          bottom: 20,
        ),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(20),
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
                    Navigator.pushNamed(context, '/detalles_favoritos');
                  },
                  child: Ink.image(
                    image: AssetImage(favoritoImagePath),
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
                    favoritoName,
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
                        color: Color.fromARGB(255, 98, 108, 114)),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_circle_right_sharp),
                      onPressed: () {
                        Navigator.pushNamed(context, "/detalles_favoritos");
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
