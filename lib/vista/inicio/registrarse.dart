import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class registrase extends StatefulWidget {
  const registrase({super.key});
  @override
  State<registrase> createState() => _registraseState();
}

class _registraseState extends State<registrase> {

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/regi1.jpg'),
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
        img(context),
        const SizedBox(height: 20),
        nombre(),
        gamil(),
        password(),
        confirmar_password(),
        registrar(context),
        const SizedBox(
          height: 30,
        ),
        tex(),
        iniciar_login(context),
      ],
    ),
  ));
}

Widget img(BuildContext context) {
  return Container(
    child: SizedBox(
      
      width: 350,
      height: 150,
      child: MaterialButton(
        
        onPressed: () async {
          
        },
        color: Color.fromARGB(255, 150, 158, 165),
        textColor: Colors.white,
        child: Icon(
          Icons.camera_alt,
          size: 50,
        ),
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
      ),
    ),
  );
}

Widget nombre() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const TextField(
      autofocus: false,
      keyboardType: TextInputType.text,
      autocorrect: true,
      textInputAction: TextInputAction.send,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.people,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        hintText: 'Nombre',
        fillColor: Color.fromARGB(56, 255, 255, 255),
        filled: true,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 255, 251, 251),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide:
              BorderSide(color: Color.fromARGB(169, 31, 28, 28), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 254, 254), width: 1)),
      ),
    ),
  );
}

Widget gamil() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const TextField(
      autofocus: false,
      keyboardType: TextInputType.text,
      autocorrect: true,
      textInputAction: TextInputAction.send,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email_outlined,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        hintText: 'Email',
        fillColor: Color.fromARGB(56, 255, 255, 255),
        filled: true,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 255, 251, 251),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide:
              BorderSide(color: Color.fromARGB(169, 31, 28, 28), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 254, 254), width: 1)),
      ),
    ),
  );
}

Widget password() {
  return Container(
    padding: const EdgeInsets.all(15),
    child: const TextField(
      autofocus: false,
      keyboardType: TextInputType.text,
      autocorrect: true,
      textInputAction: TextInputAction.send,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock_outlined,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        hintText: 'Contraseña',
        fillColor: Color.fromARGB(56, 224, 224, 224),
        filled: true,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide:
              BorderSide(color: Color.fromARGB(169, 62, 62, 62), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.white, width: 1)),
      ),
      obscureText: true,
    ),
  );
}

Widget confirmar_password() {
  return Container(
    padding: const EdgeInsets.all(15),
    child: const TextField(
      autofocus: false,
      keyboardType: TextInputType.text,
      autocorrect: true,
      textInputAction: TextInputAction.send,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock_outlined,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        hintText: 'Confirmar Contraseña',
        fillColor: Color.fromARGB(56, 224, 224, 224),
        filled: true,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide:
              BorderSide(color: Color.fromARGB(169, 62, 62, 62), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.white, width: 1)),
      ),
      obscureText: true,
    ),
  );
}

Widget registrar(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Color.fromARGB(255, 54, 115, 194)),
        child: const Text("Registrar"),
      ),
    ),
  );
}

Widget tex() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const Text(
      "¿Ya tienes una cuenta?",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 15.0,
      ),
    ),
  );
}

Widget iniciar_login(BuildContext context) {
  return Container(
    child: SizedBox(
      
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Text('iniciar'),
        )),
        
  );
}
