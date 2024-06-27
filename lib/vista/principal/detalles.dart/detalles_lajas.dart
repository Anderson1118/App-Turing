import 'package:flutter/material.dart';

import '../../../barra.dart';

class lajas extends StatefulWidget {
  const lajas({super.key});

  @override
  State<lajas> createState() => _lajasState();
}

class _lajasState extends State<lajas> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Home(),
        backgroundColor: Color.fromARGB(255, 223, 220, 223),
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 90,
          backgroundColor: Colors.transparent,
          leading: Builder(builder: (BuildContext context) {
            return Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_outlined),
                  onPressed: () {
                    Navigator.pushNamed(context, '/principal');
                  },
                )
              ],
            );
          }),
          title: const Text(
            "Santuario de las Lajas, Nariño",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(224, 0, 0, 0),
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
                color: Color.fromARGB(255, 7, 86, 255),
              ),
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Center(
              child: ListView(
                children: [
                  Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40)),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/lajas1.jpg'),
                          ))),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    "Santuario de las Lajas, Nariño",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "De los lugares con mayor valor y riquezas de piedras preciosas en Colombia."
                              " El Santuario de las Lajas es un templo muy conocido por los cristianos colombianos; su arquitectura y aspecto han convertido a este sitio en algo mágico, como salido de un cuento que reyes y princesas. ",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Indicaciones",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "¿Dónde queda el Santuario de las Lajas?",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                            const Text(
                              "Se encuentra ubicado en Ipiales, Nariño. Su nombre completo es El Santuario de Nuestra Señora de Las Lajas."
                              " Su edificio principal mide 27,50 metros de alto y sus torres 100 metros; y, posee un puente que tiene 50 metros de largo y 17 de ancho (la mayoría de turistas toman sus mejores fotos desde este puente). ",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: 300.0,
                                height: 300.0,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/lajas2.jpg'),
                                    ))),
                            SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "¿Cómo llegar al Santuario de las Lajas?",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                            const Text(
                              "Para llegar al santuario lo primero que debes hacer es ir a Pasto y de ahí a Ipiales. El viaje solo dura de 10 a 15 minutos y el pasaje cuesta 10.000 pesos colombianos"
                              " Estando en Ipiales tomas un taxi colectivo que cobra 3.000 pesos por persona y demoras 15 minutos en llegar al santuario de la virgen. "
                              "Mientras haces el recorrido al santuario encontrarás un teleférico, que funciona de 7:00a.m. a 8:00p.m. y tiene un valor por trayecto de 12.000. Si decides ir y regresar en el teleférico solo tendrás que pagar 20.000 pesos.",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: 300.0,
                                height: 300.0,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/lajas3.jpg'),
                                    ))),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: const EdgeInsets.all(1),
                              child: const TextField(
                                autofocus: false,
                                keyboardType: TextInputType.text,
                                autocorrect: true,
                                textInputAction: TextInputAction.send,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Dejanos tu comentario',
                                  fillColor: Color.fromARGB(255, 255, 252, 252),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(246, 0, 0, 0),
                                        width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(14)),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          width: 1)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 230),
                              child: const Text(
                                "Calificacion",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Wrap(
                                  children: [
                                    Wrap(
                                      children: List.generate(5, (index) {
                                        return const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 255, 230, 0),
                                          size: 15,
                                        );
                                      }),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "1230",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Comentarios",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}