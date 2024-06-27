import 'package:flutter/material.dart';

import '../../barra.dart';

class verpaises extends StatefulWidget {
  const verpaises({super.key});

  @override
  State<verpaises> createState() => _verpaisesState();
}

class _verpaisesState extends State<verpaises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '            Paises',
          style: TextStyle(
            color: Color.fromARGB(255, 8, 13, 44),
            fontSize: 25,
          ),
        ),
        leadingWidth: 100,
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        leading: Builder(builder: (BuildContext context) {
          return Row(
            children: [
              IconButton(
                icon: const Icon(Icons.west_rounded),
                color: Color.fromARGB(255, 0, 0, 0),
                onPressed: () => {Navigator.pushNamed(context, '/principal')},
              ),
            ],
          );
        }),
      ),
      body: Container(
        child: Center(child: paises(context)),
      ),
      bottomNavigationBar: Home(),
    );
  }
}

Widget paises(BuildContext context) {
  return SingleChildScrollView(
    child: Center(
        child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 212, 176, 16),
                        Color.fromARGB(255, 6, 43, 255),
                        Color.fromARGB(255, 255, 0, 0),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(right: 10, top: 50.0, bottom: 8.0),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/colombia');
                },
                child: const Center(
                    child: Text(
                  'Colombia',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 26, 105, 33),
                        Color.fromARGB(255, 160, 155, 158),
                        Color.fromARGB(255, 209, 14, 14),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(right: 10, top: 50.0, bottom: 8.0),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/mexico');
                },
                child: const Center(
                    child: Text(
                  'Mexico',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 212, 176, 16),
                        Color.fromARGB(255, 6, 43, 255),
                        Color.fromARGB(255, 255, 0, 0),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(right: 10, top: 50.0, bottom: 8.0),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/ecuador');
                },
                child: const Center(
                    child: Text(
                  'Ecuador',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 22, 172, 17),
                        Color.fromARGB(255, 183, 202, 6),
                        Color.fromARGB(255, 7, 42, 136),
                        Color.fromARGB(255, 183, 202, 6),
                        Color.fromARGB(255, 22, 172, 17),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(right: 10, top: 50.0, bottom: 8.0),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'Brasil',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 28, 9, 136),
                        Color.fromARGB(255, 224, 222, 224),
                        Color.fromARGB(255, 224, 222, 224),
                        Color.fromARGB(255, 233, 9, 9),
                        Color.fromARGB(255, 233, 9, 9),
                        Color.fromARGB(255, 233, 9, 9),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(right: 10, top: 50.0, bottom: 8.0),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'chile',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 27, 238, 227),
                        Color.fromARGB(255, 168, 154, 154),
                        Color.fromARGB(255, 27, 238, 227),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(right: 10, top: 50.0, bottom: 8.0),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'Argentina',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 226, 8, 8),
                        Color.fromARGB(255, 153, 145, 145),
                        Color.fromARGB(255, 9, 5, 231),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(right: 10, top: 50.0, bottom: 8.0),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'Paraguay',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 9, 5, 231),
                        Color.fromARGB(255, 9, 5, 231),
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 9, 5, 231),
                        Color.fromARGB(255, 255, 255, 255),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(right: 10, top: 50.0, bottom: 8.0),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'Uruguay',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
              ),
            ],
          ),
        ),
      ],
    )),
  );
}
