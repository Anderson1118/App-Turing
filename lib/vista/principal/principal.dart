import 'package:app_turing/barra.dart';
import 'package:app_turing/vista/principal/busqueda/country.dart';
import 'package:app_turing/vista/principal/busqueda/search_country_delegate.dart';
import 'package:app_turing/vista/principal/carousel/amigos.dart';
import 'package:app_turing/vista/principal/detalles.dart/data_amigos.dart';
import 'package:flutter/material.dart';
import 'package:app_turing/vista/principal/carousel/caruselhome.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'carousel/home2.dart';
import 'carousel/paises.dart';
import 'carousel/style_favoritos.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('index 0:Home'),
    Text("index 1:favoritos"),
    Text("index 2:agregar"),
    Text("index 3:notificaciones"),
    Text("index 4:perfil"),
  ];
  //---------

  //Lista de tipos de cafe

  //el usuario tocó los tipos de café
  // ignore: non_constant_identifier_names

  //--------

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //----------------------------
  @override
  Widget build(BuildContext context) {
    Color _color = Color.fromARGB(255, 255, 255, 255);
    

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: ListTile(
          onTap: () {
            
          },
          title:  TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.only(right: 50),
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                   Navigator.pushNamed(context, '/busqueda_paises');

                  },
                  child: const Text('Busca Tus Lugares Favoritos'),
                ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      bottomNavigationBar: Home(),
      body: Container(
        child: Center(child: cuerpoprin(context)),
      ),
    );
  }
}

Widget cuerpoprin(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 320),
          child: const Text(
            "Amigos",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 8, 13, 44),
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: stories
                      .map((Story) => story(img: Story.img, name: Story.name))
                      .toList())),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Ciudades de Moda",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/vertodo1');
                },
                child: const Text(
                  "Ver todo",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 75, 72, 72),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              home1(
                home1ImagePath: 'lib/images/popayan1.jpg',
                home1Name: 'Popayan Cauca',
                countri: 'Colombia',
                descripcion: 'La ciudad blanca de colombia, mas info...',
                ruta: "/product_details",
              ),
              home1(
                home1ImagePath: 'assets/nueva/2.jpg',
                home1Name: 'Playa de Copacabana',
                countri: 'Brasil',
                descripcion: 'La ciudad mas bonita de Brasil, Mas info...',
                ruta: "/detalles_perfil",
              ),
              home1(
                home1ImagePath: 'lib/images/guatape.jpg',
                home1Name: 'Guatape Antioquia',
                countri: 'colombia',
                descripcion:
                    'un pintoresco pueblo ubicado a orillas de un gran embalse en.....',
                ruta: '/detalles_guatape',
              ),
              home1(
                home1ImagePath: 'lib/images/lajas.jpg',
                home1Name: 'Ipiales Nariño ',
                countri: 'Colombia',
                descripcion:
                    'De los lugares con mayor valor y riquezas de piedras preciosas en Colombia.',
                ruta: "/detalles_lajas",
              ),
            ]),
          ),
        ),
       
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 45.0,
              ),
              height: 310.0,
              width: 380.0,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 16, 84, 211),
                      Color.fromARGB(255, 18, 212, 115),
                      Color.fromARGB(255, 26, 136, 26)
                    ]),
              ),
            ),
            Container(
               margin: const EdgeInsets.only(
                top: 50.0,
                left: 5.0,
              ),
            child: Material(
              
              borderRadius: BorderRadius.circular(150.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/verpaises");
                },
                child: Ink.image(
                  image: AssetImage('assets/mundo.jpg'),
                  height: 300.0,
                  width: 370.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Paises de Moda",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verpaises');
                },
                child: const Text(
                  "Ver todo",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 75, 72, 72),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              paises(
                paisesImagePath: 'assets/colombia/colombia.jpg',
                paisesName: 'Colombia',
                rutap: "/colombia",
              ),
              paises(
                paisesImagePath: 'assets/mexico/mexico.jpg',
                paisesName: 'Mexico',
                rutap: "/mexico",
              ),
              paises(
                paisesImagePath: 'assets/nueva/brazil.jpg',
                paisesName: 'Brasil ',
                rutap: "/ecuador",
              ),
            ]),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 160),
          child: Text(
            "Planifica tu proxima escapada",
            style: GoogleFonts.josefinSans(
              fontSize: 20,
              color: Color.fromARGB(255, 28, 34, 73),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 95),
          child: Text(
            "Descubre Lugares para toda la Familia",
            style: GoogleFonts.josefinSans(
              fontSize: 20,
              color: Color.fromARGB(255, 28, 34, 73),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                home2(
                  home2ImagePath: 'assets/nueva/2.jpg',
                  home2Name: 'Playa de Copacaban',
                ),
                home2(
                  home2ImagePath: 'lib/images/sanandres.jpg',
                  home2Name: 'San Andres Isla',
                ),
                home2(
                  home2ImagePath: 'lib/images/buga.jpg',
                  home2Name: 'Buga Valle del cauca',
                ),
                home2(
                  home2ImagePath: 'lib/images/guatape.jpg',
                  home2Name: 'Guatape',
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
