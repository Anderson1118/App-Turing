import 'package:app_turing/barra.dart';
import 'package:app_turing/vista/principal/detallespaises/detallescolombia.dart';
import 'package:flutter/material.dart';

import 'detallespaises/detallesecuador.dart';

class ecuador extends StatefulWidget {
  const ecuador({super.key});

  @override
  State<ecuador> createState() => _ecuadorState();
}

class _ecuadorState extends State<ecuador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('              Ciudades de Ecuador'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color.fromARGB(255, 255, 238, 0), Color.fromARGB(255, 17, 0, 255), Color.fromARGB(255, 255, 0, 0)]),
          ),
        ),
      ),
      bottomNavigationBar: Home(),
      body: Container(
        child: Center(child: cuerpocolombia(context)),
      ),
    );
  }
}

Widget cuerpocolombia(BuildContext context){
  return Container(
    child: Center(
      child: Column(
        children:[
        Expanded(
            child: ListView(scrollDirection: Axis.vertical, children: [
              ecuadorde(
                ecuadorImagePath: 'assets/ecuador/Mitaddelmundo.jpg',
                ecuadorName: 'Provincia de Pichincha',
              ),
              ecuadorde(
                ecuadorImagePath: 'assets/ecuador/32.jpg',
                ecuadorName: 'Cascadas de San Rafael',
              ),
              ecuadorde(
                ecuadorImagePath: 'assets/ecuador/22.jpg',
                ecuadorName: 'Atacames',
              ),
              ecuadorde(
                ecuadorImagePath: 'assets/ecuador/21.jpg',
                ecuadorName: 'Guayaquil',
              ),
              ecuadorde(
                ecuadorImagePath: 'assets/ecuador/8.jpg',
                ecuadorName: 'Volcan Chimborazo',
              ),
              ecuadorde(
                ecuadorImagePath: 'assets/ecuador/11.jpg',
                ecuadorName: 'Iglesia de la Compañia de Jesus',
              ),
              
            ]),
          )

        ],
      ),
    ),
  );
}