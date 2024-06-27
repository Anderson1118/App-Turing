import 'package:app_turing/barra.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class agregar extends StatefulWidget {
  const agregar({super.key});

  @override
  State<agregar> createState() => _agregarState();
}

class _agregarState extends State<agregar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        child: Center(child: todo(context)),
      ),
      bottomNavigationBar: Home(),
    );
  }
}


Widget todo(BuildContext context){
  return SingleChildScrollView(
    
    child: Column(
      children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/principal');
                  },
                  child: const Text('cancelar'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Nueva Publicacion",
                  style: GoogleFonts.josefinSans(
                    fontSize: 30,
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
                    Navigator.pushNamed(context, '/principal');
                  },
                  child: const Text('Listo'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                iconSize: 50,
                color: Colors.blue,
                icon: const Icon(Icons.add_photo_alternate),
                
                onPressed: () {
                  
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Fotos'),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
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
                hintText: 'Donde Estuviste?',
                fillColor: Color.fromARGB(255, 255, 252, 252),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(246, 0, 0, 0), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1)),
              ),
            ),
          ),
          
          Container(
            padding: const EdgeInsets.all(20),
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
                hintText: 'Descripcion',
                fillColor: Color.fromARGB(255, 255, 252, 252),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(246, 0, 0, 0), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1)),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
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
                hintText: 'Indicaciones',
                fillColor: Color.fromARGB(255, 255, 252, 252),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(246, 0, 0, 0), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1)),
              ),
            ),
          ),

      ],
    ),
    
  );
}