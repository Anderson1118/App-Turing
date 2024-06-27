import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../barra.dart';

class ajustes extends StatefulWidget {
  const ajustes({super.key});

  @override
  State<ajustes> createState() => _ajustesState();
}

class _ajustesState extends State<ajustes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Home(),
      body: Container(
        height: 550,
        
        child: Center(child: cuerpoAjuste(context)),
      ),
    );
  }
}

Widget cuerpoAjuste(BuildContext context) {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_outlined),
                    onPressed: () {
                      Navigator.pushNamed(context, '/perfil');
                    },
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "      Ajustes",
                  style: GoogleFonts.josefinSans(
                    fontSize: 30,
                    color: Color.fromARGB(255, 28, 34, 73),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.only(right: 320),
            child: const Text(
              "Cuenta",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 152, 155, 177),
                fontSize: 25.0,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cambiarpass');
                      },
                      child: Text(
                        "Cambiar Contraseña",
                        style: GoogleFonts.josefinSans(
                          fontSize: 23,
                          color: Color.fromARGB(255, 28, 34, 73),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const  EdgeInsets.only(left:150),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_circle_right),
                    onPressed: () {
                     Navigator.pushNamed(context, '/cambiarpass');
                    },
                  )),
            ],
          ),
          SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.only(right: 330),
            child: const Text(
              "Otros",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 152, 155, 177),
                fontSize: 25.0,
              ),
            ),
          ),
          
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        "Politica de Privacidad",
                        style: GoogleFonts.josefinSans(
                          fontSize: 23,
                          color: Color.fromARGB(255, 28, 34, 73),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const  EdgeInsets.only(left:145),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_circle_right),
                    onPressed: () {
                     
                    },
                  )),
            ],
          ),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        "Terminos y Condiciones",
                        style: GoogleFonts.josefinSans(
                          fontSize: 23,
                          color: Color.fromARGB(255, 28, 34, 73),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const  EdgeInsets.only(left:135),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_circle_right),
                    onPressed: () {
                     
                    },
                  )),
            ],
          ),
          SizedBox(height: 40,),
          const SizedBox(width: 80,),
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
                  child: const Text('Cerrar Sesion'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: ((context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)
                          ),
                          title:Text("Cerra Sesion"),
                          content:const  Text(
                            "¿Estas seguro de que deseas cerrar sesion?"
                            ),
                            actions: [
                              TextButton(
                                onPressed: (){
                                Navigator.pushNamed(context, '/login');
                              },
                               child: const Text("SI")
                              ),
                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, '/ajustes');
                              }, 
                              child: const Text("Cancelar")
                              ),
                            ],
                        );
                        
                      })
                    );
                  },
                ),
                
              ],
            ),
          ),
          
          
        ],
      ),
    ),
  );
}
