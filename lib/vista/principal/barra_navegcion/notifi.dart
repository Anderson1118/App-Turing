
import 'package:app_turing/barra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class notify {
  final String name;
  final String images;
  final String descrip;
  final ruta;

  notify({
    required this.name,
    required this.ruta,
    required this.images,
    required this.descrip,
  });
}

class notificaciones extends StatefulWidget {
  const notificaciones({Key? key}) : super(key: key);

  @override
  _notificacionesState createState() => _notificacionesState();
}

class _notificacionesState extends State<notificaciones> {
  final List<notify> _users = [
    notify(
      name: 'Anderson',
      images: 'assets/ander.jpg',
      ruta:'',
      descrip: 'Anderson ha publicado un nuevo lugar'
    ),
    notify(
      name: 'Diana ',
      images: 'assets/i1.jpg',
      ruta:'',
      descrip: 'Diana ha publicado un nuevo lugar'
      
    ),
    notify(
      name: 'Adrian',
      images: 'assets/i2.jpg',
      ruta:'',
      descrip: 'Adrian ha publicado un nuevo lugar'
    ),
    notify(
      name: 'Karen',
      images: 'assets/playa.png',
      ruta:'',
      descrip: 'Karen ha publicado un nuevo lugar'
    ),
    notify(
      name: 'Willian',
      images: 'assets/popayan.jpg',
      ruta:'',
      descrip: 'Willian ha publicado un nuevo lugar'
    ),
    notify(
      name: 'Xiomara',
      images: 'assets/i3.jpg',
      ruta:'',
      descrip: 'Xiomara ha publicado un nuevo lugar',
    ),
    
    
  ];

  List<notify> cantnotify = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      cantnotify = _users;
    });
  }

  onSearch(String search) {
    setState(() {
      cantnotify = _users
          .where((user) => user.name.toLowerCase().contains(search))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Notificaciones",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15, bottom: 10, left: 10),
              child: const Text(
                "Nueva publicaciones",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10000,
              child: home(),
            )
          ],
        ),
      ),
      bottomNavigationBar:  Home(),
    );
  }

  Widget home() {
    return ListView.builder(
      itemCount: cantnotify.length,
      itemBuilder: (context, index) {
        return Slidable(
          actionPane: const SlidableDrawerActionPane(),
          actionExtentRatio: 0.25,
          secondaryActions: [
            IconSlideAction(
              caption: 'Eliminar',
              color: const Color.fromARGB(211, 255, 0, 0),
              icon: Icons.delete,
              onTap: () => null,
            ),
          ],
          child: Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: notifycomponen(detalles: cantnotify[index]),
          ),
        );
      },
    );
  }

  notifycomponen({required notify detalles}) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      detalles.images,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detalles.name,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
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