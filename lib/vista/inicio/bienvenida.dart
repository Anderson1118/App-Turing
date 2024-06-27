import 'package:app_turing/vista/principal/principal.dart';
import 'package:flutter/material.dart';

class bienvenida extends StatefulWidget {
  const bienvenida({super.key});

  @override
  State<bienvenida> createState() => _bienvenidaState();
}

class _bienvenidaState extends State<bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        leading: Icon(Icons.power_input),
        actions: [
          ElevatedButton(
            
        onPressed: () {
          Navigator.pushNamed(context, ('/principal'));
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Color.fromARGB(255, 137, 145, 155)),
        child: const Text(
          "Saltar",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 18.0),
        ),
      ),
        ],
        
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/welcome.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: cuerpo(context)),
      ),
    );
  }
}

Widget cuerpo(BuildContext context) {
  return SingleChildScrollView(
      child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        tex1(),
        tex2(),
        SizedBox(
          height: 400,
        ),
        activar_gps(context),
      ],
    ),
  ));
}

Widget tex1() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const Text(
      "Bienvenidos",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromARGB(255, 250, 247, 247),
        fontSize: 30.0,
      ),
    ),
  );
}

Widget tex2() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const Text(
      "Encienda su GPS para encontrar amigos cerca de usted.",
      textAlign: TextAlign.center,
      style:
          TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 25.0),
    ),
  );
}

Widget activar_gps(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: SizedBox(
      width: 350,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/bienvenida');
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: Color.fromARGB(255, 54, 115, 194)),
        child: const Text(
          "Activar GPS",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 18.0),
        ),
      ),
    ),
  );
}