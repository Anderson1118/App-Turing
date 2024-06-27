
import 'package:app_turing/barra.dart';
import 'package:app_turing/vista/principal/ecuador.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../detalles.dart/detalles_guatape.dart';
import '../detalles.dart/detalles_lajas.dart';
import '../detalles.dart/detalles_perfil.dart';
import '../detalles.dart/product_details.dart';

class categoria_paises {
  final String nombre;
  final  rutap;

  categoria_paises({required this.nombre, required this.rutap});
}



class busqueda_paises extends StatefulWidget {
  const busqueda_paises({Key? key}) : super(key: key);

  @override
  _busqueda_paisesState createState() => _busqueda_paisesState();
}

class _busqueda_paisesState extends State<busqueda_paises> {
  final List<categoria_paises> _nombres = [
    categoria_paises(
      nombre: 'Ecuador',
      rutap: const ecuador(),
    ),
    categoria_paises(
      nombre: 'Popayan',
      rutap: const ProductDetails(),
    ),
    categoria_paises(
      nombre: 'Playa Copacabana',
      rutap: const detallesperfil(),
    ),
    categoria_paises(
      nombre: "Guatape Antioquia",
      rutap: const guatape(),
    ),
    categoria_paises(
      nombre: "Ipiales Nariño",
      rutap:const lajas(),
    ),
    
  ];

  List<categoria_paises> categoria_detalle = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      categoria_detalle = _nombres;
    });
  }

  onSearch(String search) {
    setState(() {
      categoria_detalle = _nombres
          .where((user) => user.nombre.toLowerCase().contains(search))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 50,
          child: TextField(
            onChanged: (value) => onSearch(value),
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 231, 231, 231),
                contentPadding: const EdgeInsets.all(0),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintStyle: const TextStyle(
                  fontSize: 25,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
                hintText: "Que Pais deseas Buscar"),
          ),
        ),
      ),
      body: Container(
        child: categoria_detalle.isNotEmpty
            ? ListView.builder(
                itemCount: categoria_detalle.length,
                itemBuilder: (context, index) {
                  return Slidable(
                    actionPane: const SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    child: listanombres(detalles: categoria_detalle[index]),
                  );
                },
              )
            : const Center(
                child: Text(
                  "no se encuentra",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
      ),
      bottomNavigationBar: Home(),
    );
  }

  listanombres({required categoria_paises detalles}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detalles.nombre,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.normal),
                  ),
                ],
              )
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => detalles.rutap,
                ),
              );
            },
            child: const Text(
              'ver',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
