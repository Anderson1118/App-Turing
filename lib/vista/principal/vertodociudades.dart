import 'package:app_turing/barra.dart';
import 'package:app_turing/vista/inicio/registrarse.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'carousel/caruselhome.dart';
import 'carousel/home2.dart';
import 'carousel/style_favoritos.dart';

class vertodo1 extends StatefulWidget {
  const vertodo1({super.key});

  @override
  State<vertodo1> createState() => _vertodo1State();
}

class _vertodo1State extends State<vertodo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '     Ciudades de Moda',
          style: TextStyle(
            color: Color.fromARGB(255, 8, 13, 44),
          ),
        ),
        leadingWidth: 100,
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        leading: Builder(builder: (BuildContext context) {
          return Row(
            children: [
              IconButton(
                icon: const Icon(Icons.west_rounded),
                color: Color.fromARGB(255, 0, 0, 0),
                onPressed: () => {Navigator.pushNamed(context, '/principal')},
              ),
            ],
          );
        }),
      ),
      body: Container(
        child: Center(child: vertodo(context)),
      ),
      bottomNavigationBar: Home(),
    );
  }
}

Widget vertodo(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Buscar',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)),
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                home2(
                home2ImagePath: 'assets/nueva/2.jpg',
                home2Name: 'Playa de Copacaban',
              ),
              home2(
                home2ImagePath: 'lib/images/sanandres.jpg',
                home2Name: 'San Andres Isla',
              ),
              home2(
                home2ImagePath: 'lib/images/buga.jpg',
                home2Name: 'Buga Valle del cauca',
              ),
              home2(
                home2ImagePath: 'lib/images/guatape.jpg',
                home2Name: 'Guatape',
              ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
