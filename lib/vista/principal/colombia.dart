import 'package:app_turing/barra.dart';
import 'package:app_turing/vista/principal/detallespaises/detallescolombia.dart';
import 'package:flutter/material.dart';

class colombia extends StatefulWidget {
  const colombia({super.key});

  @override
  State<colombia> createState() => _colombiaState();
}

class _colombiaState extends State<colombia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 90,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (BuildContext context) {
          return Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_outlined),
                color: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, '/verpaises');
                },
              )
            ],
          );
        }),
        title: const Text(
          "       Ciudades de Colombia",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(223, 255, 255, 255),
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        flexibleSpace: Container(
           decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color.fromARGB(255, 255, 238, 0), Color.fromARGB(255, 17, 0, 255), Color.fromARGB(255, 255, 0, 0)]
                ),
           )
        ),
      ),
      bottomNavigationBar: Home(),
      body: Container(
        child: Center(child: cuerpocolombia(context)),
      ),
    );
  }
}

Widget cuerpocolombia(BuildContext context) {
  return Container(
    child: Center(
      child: Column(
        children: [
          Expanded(
            child: ListView(scrollDirection: Axis.vertical, children: [
              colombiade(
                colombiaImagePath: 'lib/images/popayan1.jpg',
                colombiaName: 'Popayan Cauca',
                rutac: "/detalles_popayan",
              ),
              colombiade(
                colombiaImagePath: 'assets/colombia/lajas.jpg',
                colombiaName: 'Ipiales Nariño',
                rutac: '',
              ),
              colombiade(
                colombiaImagePath: 'lib/images/buga.jpg',
                colombiaName: 'Buga Valle del cauca',
                rutac: '',
              ),
              colombiade(
                colombiaImagePath: 'lib/images/guatape.jpg',
                colombiaName: 'Guatape',
                rutac: '',
              ),
              colombiade(
                colombiaImagePath: 'assets/colombia/barranquilla.jpg',
                colombiaName: 'Barranquilla',
                rutac: '',
              ),
              colombiade(
                colombiaImagePath: 'assets/colombia/cartagena.jpg',
                colombiaName: 'Cartagena',
                rutac: '',
              ),
              colombiade(
                colombiaImagePath: 'assets/colombia/cali rey.jpg',
                colombiaName: 'Cali',
                rutac: '',
              ),
              colombiade(
                colombiaImagePath: 'assets/colombia/bogota.jpeg',
                colombiaName: 'Bogota',
                rutac: '',
              ),
              colombiade(
                colombiaImagePath: 'assets/colombia/medellin.jpg',
                colombiaName: 'Medellin',
                rutac: '',
              ),
            ]),
          )
        ],
      ),
    ),
  );
}
