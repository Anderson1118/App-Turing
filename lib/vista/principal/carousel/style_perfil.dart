// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class perfiluser extends StatelessWidget {
  final String perfilImagePath;
  final String perfilName;
  

  perfiluser({
    required this.perfilImagePath,
    required this.perfilName, 
    
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
        padding: const EdgeInsets.only(right: 10, left: 10, top: 10,bottom:20),
        width: 400,
        decoration: BoxDecoration(
         borderRadius: new BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 224, 223, 223),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 228, 225, 225)
                    ]
                    ),
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
                    Navigator.pushNamed(context, '/detalles_perfil');
                  },
                  child: Ink.image(
                    image: AssetImage(perfilImagePath),
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
                    perfilName,
                    style: TextStyle(fontSize: 20),
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
                        Navigator.pushNamed(context, "/detalles_perfil");
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


