import 'package:app_turing/vista/inicio/Bienvenida.dart';
import 'package:app_turing/vista/inicio/Login.dart';
import 'package:app_turing/vista/inicio/olvidaste_pass.dart';
import 'package:app_turing/vista/inicio/registrarse.dart';
import 'package:app_turing/vista/principal/barra_navegcion/add.dart';
import 'package:app_turing/vista/principal/barra_navegcion/favoritos.dart';
import 'package:app_turing/vista/principal/barra_navegcion/notifi.dart';
import 'package:app_turing/vista/principal/barra_navegcion/perfil.dart';
import 'package:app_turing/vista/principal/barra_navegcion/perfil/ajustes.dart';
import 'package:app_turing/vista/principal/barra_navegcion/perfil/cambiarpass.dart';
import 'package:app_turing/vista/principal/barra_navegcion/perfil/editarperfil.dart';
import 'package:app_turing/vista/principal/busqueda/search_country_delegate.dart';
import 'package:app_turing/vista/principal/colombia.dart';
import 'package:app_turing/vista/principal/detalles.dart/amigos.dart';
import 'package:app_turing/vista/principal/detalles.dart/detalles_guatape.dart';
import 'package:app_turing/vista/principal/detalles.dart/detalles_lajas.dart';
import 'package:app_turing/vista/principal/detalles.dart/detalles_favoritos.dart';
import 'package:app_turing/vista/principal/detalles.dart/detalles_home.dart';
import 'package:app_turing/vista/principal/detalles.dart/detalles_perfil.dart';
import 'package:app_turing/vista/principal/detalles.dart/detalles_popayan.dart';
import 'package:app_turing/vista/principal/detalles.dart/product_details.dart';
import 'package:app_turing/vista/principal/detalles.dart/seguidores.dart';
import 'package:app_turing/vista/principal/ecuador.dart';
import 'package:app_turing/vista/principal/mexico.dart';
import 'package:app_turing/vista/principal/principal.dart';
import 'package:app_turing/vista/principal/vertodociudades.dart';
import 'package:app_turing/vista/principal/vertodopaises.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'control/autentificacion.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(ChangeNotifierProvider(
      create: (context) => Autentificacion(),
      child: MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      



      initialRoute: "/login",
      routes: {
        "/login":(context) => const login(),
        "/olvidaste_pass":(context) => const olvidaste_pass(),
        "/registrase":(context) => const registrase(),
        "/bienvenida":(context) => const bienvenida(),
        "/principal":(context) => const principal(), 
        "/product_details":(context) => const ProductDetails(),   
        "/favoritos":(context) => const favoritos(),   
        "/detalles_favoritos":(context) => const defavoritos(),
        "/add":(context) => const agregar(),
        "/perfil":(context) => const perfil(),
        "/detalles_perfil":(context) => const detallesperfil(),
        "/detalles_lajas":(context) => const lajas(),
        "/detalles_guatape":(context) => const guatape(),
        "/detalles_popayan":(context) => const popayan(),
        "/editarperfil":(context) => const editarperfil(),
        "/ajustes":(context) => const ajustes(),
        "/cambiarpass":(context) => const cambiarpass(),
        "/home":(context) => const detalleshome(),
        "/vertodo1":(context) => const vertodo1(),
        "/verpaises":(context) => const verpaises(),
        "/colombia":(context) => const colombia(),
        "/mexico":(context) => const mexcico(),
        "/ecuador":(context) => const ecuador(),
        "/amigos":(context) => const amigos(),
        "/seguidores":(context) => const seguidores(),
        "/busqueda_paises":(context) => const busqueda_paises(),
        "/notificaciones":(context) => const notificaciones(),
        
      },
    
    );
  }
}

