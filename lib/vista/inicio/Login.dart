import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../control/autentificacion.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.png'),
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
        const SizedBox(
          height: 200,
        ),
        cusuario(),
        cpassword(),
        olvidasteContrasena(context),
        const SizedBox(
          height: 50,
        ),
        iniciar(context),
        crear(context),
        Row(
          children: [
            SizedBox(width: 130),
            logoFacebook(context),
            SizedBox(width: 30),
            logoGoogle(context),
          ],
        ),
      ],
    ),
  ));
}

Widget cusuario() {
  return Container(
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
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        hintText: 'Email',
        fillColor: Color.fromARGB(206, 221, 213, 213),
        filled: true,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
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
    ),
  );
}

Widget cpassword() {
  return Container(
    padding: const EdgeInsets.all(15),
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
          Icons.lock_outlined,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        hintText: 'Contraseña',
        fillColor: Color.fromARGB(206, 221, 213, 213),
        filled: true,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
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

Widget olvidasteContrasena(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(left: 200),
    child: Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/olvidaste_pass');
          },
          child: const Text(
            "¿Olvidaste tu contraseña?",
            style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
      ],
    ),
  );
}

Widget iniciar(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/bienvenida');
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Color.fromARGB(255, 54, 115, 194)),
        child: const Text("Iniciar"),
      ),
    ),
  );
}

Widget crear(BuildContext context) {
  return Column(
    children: [
      const SizedBox(
        height: 5,
      ),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/registrase');
        },
        child: const Text(
          "Registrate",
          style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 3, 3, 3)),
        ),
      ),
    ],
  );
}

Widget logoGoogle(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(),
    width: 60,
    child: TextButton(
        onPressed: () async {
            var authService = Provider.of<Autentificacion>(context, listen: false);
            User? user = await authService.iniciarSecion(context: context);
            if (user != null) {
              // ignore: use_build_context_synchronously
              Navigator.pushNamed(context, '/bienvenida');
            }
        },
        child:const Image(
          fit: BoxFit.fill,
          image: AssetImage("assets/google.png"),
        )),
  );
}

Widget logoFacebook(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(),
    width: 60,
    child: TextButton(
        onPressed: ()  {

        },
        child:const Image(
          fit:  BoxFit.fill,
          image: AssetImage("assets/facebook.png"),
        )),
  );
}
