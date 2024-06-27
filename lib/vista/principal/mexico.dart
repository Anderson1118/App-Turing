import 'package:app_turing/barra.dart';
import 'package:app_turing/vista/principal/detallespaises/detallescolombia.dart';
import 'package:flutter/material.dart';

import 'detallespaises/detallermexico.dart';

class mexcico extends StatefulWidget {
  const mexcico({super.key});

  @override
  State<mexcico> createState() => _mexcicoState();
}

class _mexcicoState extends State<mexcico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('                   Ciudades de Mexico'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color.fromARGB(255, 8, 116, 40), Color.fromARGB(255, 167, 166, 173), Color.fromARGB(255, 218, 20, 20)]),
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
              mexicode(
                mexicoImagePath: 'assets/mexico/10.jpg',
                mexicoName: 'Tequila Jalisco',
              ),
              mexicode(
                mexicoImagePath: 'assets/mexico/2.jpg',
                mexicoName: 'Cascadas Hierve El Agua',
              ),
              mexicode(
                mexicoImagePath: 'assets/mexico/3.jpg',
                mexicoName: 'Playa del Carmen',
              ),
              mexicode(
                mexicoImagePath: 'assets/mexico/1.jpg',
                mexicoName: 'bacalar',
              ),
              mexicode(
                mexicoImagePath: 'assets/mexico/4.jpg',
                mexicoName: 'La Huasteca Potosina',
              ),
              mexicode(
                mexicoImagePath: 'assets/mexico/20.jpg',
                mexicoName: 'Cholula Puebla',
              ),
             
             
            ]),
          )

        ],
      ),
    ),
  );
}