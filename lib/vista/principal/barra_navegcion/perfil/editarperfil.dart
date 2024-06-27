import 'package:app_turing/barra.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class editarperfil extends StatefulWidget {
  const editarperfil({super.key});

  @override
  State<editarperfil> createState() => _editarperfilState();
}

class _editarperfilState extends State<editarperfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Home(),
      body: Container(
        child: Center(child: cuerpo(context)),
      ),
    );
  }
}

Widget cuerpo(BuildContext context) {
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
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "      Editar Perfil",
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
                    Navigator.pushNamed(context, '/perfil');
                  },
                  child: const Text('Cancelar'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 200),
                width: 170,
                height: 170,
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
                width: 160,
                height: 160,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/ander.jpg'),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 90,
                  left: 100,
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            child: IconButton(
                          icon: const Icon(Icons.edit),
                          color: Color.fromARGB(255, 255, 255, 255),
                          onPressed: () {},
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              autofocus: false,
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
                  Icons.person,
                  color: Color.fromARGB(255, 35, 172, 214),
                ),
                hintText: 'Anderson Yepes',
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
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              autofocus: false,
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
                  Icons.email_outlined,
                  color: Color.fromARGB(255, 35, 172, 214),
                ),
                hintText: 'adyepes@unimayor.edu.co',
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
            ),
          ),
          ClipRRect(
              
            borderRadius: BorderRadius.circular(30),
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
                  child: const Text('Actualizar Perfil'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: ((context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                          ),
                          title:Text("Actualizar Perfil"),
                          content:const  Text(
                            "¿Estas seguro de que deseas Actualizar Perfil?"
                            ),
                            actions: [
                              TextButton(
                                onPressed: (){
                                Navigator.pushNamed(context, '/perfil');
                              },
                               child: const Text("SI")
                              ),
                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, '/editarperfil');
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
