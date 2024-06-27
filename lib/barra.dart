import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
Color ion1 = Colors.grey;
  Color ion2 = Colors.grey;
  Color ion3 = Colors.grey;
  Color ion4 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.transparent,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            //Container
            Positioned(
                top: 30,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 145, 143, 143),
                        offset: new Offset(0.0, 10.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(Icons.home, color: ion1),
                        onPressed: () {
                          limpiarColor();
                          setState(() {
                            ion1 = const Color.fromARGB(255, 101, 180, 246);
                          });
                          Navigator.pushNamed(context,'/principal');
                          
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.bookmark, color: ion2),
                        onPressed: () {
                          limpiarColor();
                          setState(() {
                            ion2 = const Color.fromARGB(255, 101, 180, 246);
                          });
                          Navigator.pushNamed(context, '/favoritos');
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications, color: ion3),
                        onPressed: () {

                          limpiarColor();
                          setState(() {
                            ion3 = const Color.fromARGB(255, 101, 180, 246);
                          });
                          Navigator.pushNamed(context, '/notificaciones');
                          
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.person, color: ion4),
                        onPressed: () {
                          
                          limpiarColor();
                          setState(() {
                            ion4 = const Color.fromARGB(255, 101, 180, 246);
                          });
                          Navigator.pushNamed(context, '/perfil');
                        },
                      ),
                    ],
                  ),
                )), //Container
            Positioned(
              top: 0,
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, '/add');
                }),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.blue, // <-- Button color
                  foregroundColor: Color.fromARGB(255, 0, 0, 0), // <-- Splash color
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
            //Container
          ], //<Widget>[]
        ), //Stack
      ), //Center
    );
  }

  limpiarColor() {
    ion1 = Colors.grey;
    ion2 = Colors.grey;
    ion3 = Colors.grey;
    ion4 = Colors.grey;
  }
}