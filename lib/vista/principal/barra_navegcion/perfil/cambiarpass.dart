import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../barra.dart';

class cambiarpass extends StatefulWidget {
  const cambiarpass({super.key});

  @override
  State<cambiarpass> createState() => _cambiarpassState();
}

class _cambiarpassState extends State<cambiarpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Home(),
      body: Container(
        height: 600,
        child: Center(child: cuerpocambiar(context)),
      ),
    );
  }
}

Widget cuerpocambiar(BuildContext context) {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_outlined),
                    onPressed: () {
                      Navigator.pushNamed(context, '/ajustes');
                    },
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "   Cambiar Contraseña",
                  style: GoogleFonts.josefinSans(
                    fontSize: 28,
                    color: Color.fromARGB(255, 28, 34, 73),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/ajustes');
                  },
                  child: const Text('Cancelar'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              autocorrect: true,
              textInputAction: TextInputAction.send,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outlined,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                hintText: 'Contraseña Actual',
                fillColor: Color.fromARGB(206, 221, 213, 213),
                filled: true,
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(169, 62, 62, 62), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              autocorrect: true,
              textInputAction: TextInputAction.send,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outlined,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                hintText: 'Nueva Contraseña',
                fillColor: Color.fromARGB(206, 221, 213, 213),
                filled: true,
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(169, 62, 62, 62), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              autocorrect: true,
              textInputAction: TextInputAction.send,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outlined,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                hintText: 'Confirmar Contraseña',
                fillColor: Color.fromARGB(206, 221, 213, 213),
                filled: true,
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(169, 62, 62, 62), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
              ),
              obscureText: true,
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color.fromARGB(255, 54, 115, 194)),
                child: const Text("Actualizar"),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
