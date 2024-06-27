import 'package:app_turing/vista/principal/carousel/style_favoritos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../barra.dart';

class favoritos extends StatefulWidget {
  const favoritos({super.key});

  @override
  State<favoritos> createState() => _favoritosState();
}

class _favoritosState extends State<favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: ListTile(
          onTap: () {
            
          },
          title:  TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.only(right: 50),
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                   Navigator.pushNamed(context, '/busqueda_paises');

                  },
                  child: const Text('Busca Tus Lugares Favoritos'),
                ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      bottomNavigationBar: Home(),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Mis Lugares Favoritos",
            style: GoogleFonts.josefinSans(
              fontSize: 35,
              color: Color.fromARGB(255, 40, 51, 122),
              
            ),
          ),
        ),
          Expanded(
            child: ListView(scrollDirection: Axis.vertical, children: [
              favorito(
                favoritoImagePath: 'lib/images/lajas.jpg',
                favoritoName: 'Ipiales Nariño Colombia',
              ),
              
              favorito(
                  favoritoImagePath: 'lib/images/brazil.jpg',
                  favoritoName: 'Rio de Janeiro Brazil',
                ),
               favorito(
                  favoritoImagePath: 'assets/mexico/1.jpg',
                  favoritoName: 'BACALAR, QUINATA ROO Mexico',
                ),
                
               
               favorito(
                 favoritoImagePath: 'assets/nueva/2.jpg',
                 favoritoName: 'Playa Copacabana Brasil',
                ),
            ]),
          )
        ],
      ),
    );
  }
}
