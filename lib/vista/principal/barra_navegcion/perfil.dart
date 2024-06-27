import 'package:app_turing/vista/principal/carousel/style_perfil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../barra.dart';

class perfil extends StatefulWidget {
  const perfil({super.key});

  @override
  State<perfil> createState() => _perfilState();
}

class _perfilState extends State<perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Home(),
      body: Center(
        child: Center(child: cuerpoperfil(context)),
      ),
    );
  }
}

Widget cuerpoperfil(BuildContext context) {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          Container(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Mi Perfil",
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      color: Color.fromARGB(255, 28, 34, 73),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 200),
                      width: 130,
                      height: 130,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xffee0000),
                              Color(0xffeeee00),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 1),
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/ander.jpg'),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Anderson Danilo Yepes",
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      color: Color.fromARGB(255, 28, 34, 73),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "adyepes@unimayor.edu.co",
                    style: GoogleFonts.josefinSans(
                      fontSize: 20,
                      color: Color.fromARGB(255, 129, 131, 145),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 65),
                      child: Text(
                        " 250",
                        style: GoogleFonts.josefinSans(
                          fontSize: 25,
                          color: Color.fromARGB(255, 9, 71, 206),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "100k",
                        style: GoogleFonts.josefinSans(
                          fontSize: 25,
                          color: Color.fromARGB(255, 9, 71, 206),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Text(
                        "230",
                        style: GoogleFonts.josefinSans(
                          fontSize: 25,
                          color: Color.fromARGB(255, 9, 71, 206),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: TextButton(
                        onPressed: () {
                          
                        },
                        child: const Text(
                          "publicaciones",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 28, 34, 73),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/seguidores');
                        },
                        child: const Text(
                          "seguidores",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 28, 34, 73),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: () {
                         Navigator.pushNamed(context, '/amigos');
                        },
                        child: const Text(
                          "Siguiendo",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 28, 34, 73),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF0D47A1),
                                    Color(0xFF1976D2),
                                    Color(0xFF42A5F5),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/editarperfil');
                            },
                            child: const Text('Editar Perfil'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color.fromARGB(255, 199, 200, 202),
                                    Color.fromARGB(255, 245, 247, 250),
                                    Color.fromARGB(255, 194, 198, 201),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 0, 0, 0),
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/ajustes');
                            },
                            child: const Text('Ajustes'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      perfiluser(
                        perfilImagePath: 'assets/nueva/2.jpg',
                        perfilName: 'Playa de Copacaban',
                      ),
                      perfiluser(
                        perfilImagePath: 'lib/images/sanandres.jpg',
                        perfilName: 'San Andres Isla',
                      ),
                      perfiluser(
                        perfilImagePath: 'lib/images/buga.jpg',
                        perfilName: 'Buga Valle del cauca',
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    ),
  );
}
