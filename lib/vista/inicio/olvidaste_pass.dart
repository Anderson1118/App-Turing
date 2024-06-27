import 'package:flutter/material.dart';

class olvidaste_pass extends StatefulWidget {
  const olvidaste_pass({super.key});

  @override
  State<olvidaste_pass> createState() => _olvidaste_passState();
}

class _olvidaste_passState extends State<olvidaste_pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        toolbarHeight: 50,
        leading: Builder(builder: (BuildContext context) {
          return Row(
            children: [
              IconButton(
                icon: const Icon(Icons.west_rounded),
                onPressed: () => {Navigator.pushNamed(context, '/login')},
              ),
            ],
          );
        }),
        
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/olvidar2.jpg'),
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
        const SizedBox(
          height: 50,
        ),
        tex2(),
        gamil(),
        const SizedBox(
          height: 30,
        ),
        enviar(),
      ],
    ),
  ));
}

Widget tex1() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const Text(
      "¿Olvidaste Tu Contraseña?",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 30.0,
      ),
    ),
  );
}

Widget tex2() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const Text(
      "Ingresa Tu Correo Electronico para Recuperar Tu Contraseña",
      textAlign: TextAlign.center,
      style:
          TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25.0),
          
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

Widget enviar() {
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
        child: const Text("Enviar"),
      ),
    ),
  );
}
