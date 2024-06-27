import 'package:flutter/material.dart';

import '../../../barra.dart';

class guatape extends StatefulWidget {
  const guatape({super.key});

  @override
  State<guatape> createState() => _guatapeState();
}

class _guatapeState extends State<guatape> {
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
            "  Guatapé y Piedra del Peñol",
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
                            image: AssetImage('assets/colombia/guatape2.jpg'),
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
                                    "Guatapé Antioquia",
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
                              "Guatapé es un municipio de Colombia, localizado en la subregión Oriente del departamento de Antioquia conocido como “El Pueblo de los Zócalos”."
                              "  Limita por el norte con el municipio de Alejandría, por el este con el municipio de San Rafael, por el sur con los municipios de Granada y El Peñol y por el Oeste con El Peñol. ",
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
                              "¿Dónde queda Guatape?",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                            const Text(
                              "Su cabecera se encuentra a 75 kilómetros de la ciudad de Medellín, capital del departamento de Antioquia. El municipio posee una extensión de 69 kilómetros cuadrados y una temperatura promedio de 20°c."
                              " El Municipio de Guatapé ha sufrido diferentes cambios a través de la historia, ya que de ser esencialmente ganadero, agrícola y minero, en los años 70 del siglo XX, dada la construcción de un gigantesco embalse en su territorio, pasó a ser una fortaleza turística. ",
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
                                      image: AssetImage('assets/colombia/peñol.jpg'),
                                    ))),
                            SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Descripción",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "En 1970, Guatapé enfrentó una encrucijada, cuando se anunció que, parte del municipio, debía ser inundado para construir el complejo hidroeléctrico de las Empresas Públicas de Medellín, una represa de importancia energética para Colombia."
                              "A pesar de las dificultades que supuso la reubicación de un municipio, esta población de poco más de ocho mil habitantes ha sabido renacer, haciendo de este lugar, uno de los más apetecidos por los visitantes nacionales y extranjeros."
                              "Calles empedradas se adornan con casas pintadas de múltiples colores. Se destacan construcciones de doble altura en las que sobresalen balcones de madera.",
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
                                      image: AssetImage('assets/colombia/represa.jpg'),
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