import 'package:flutter/material.dart';

import '../../../barra.dart';
import '../../../widgets/small_text.dart';

class popayan extends StatefulWidget {
  const popayan({super.key});

  @override
  State<popayan> createState() => _popayanState();
}

class _popayanState extends State<popayan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Home(),
        backgroundColor: Color.fromARGB(255, 230, 230, 230),
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
                    Navigator.pushNamed(context,'/colombia');
                  },
                )
              ],
            );
          }),
          title: const Text(
            "           POPAYAN CAUCA",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(224, 0, 0, 0),
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
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
                            image: AssetImage('assets/popayan.jpg'),
                          ))),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 252, 252, 252),
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
                                    "Popayan cauca",
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
                              "Popayán es la capital del Departamento del Cauca en la República de Colombia, se encuentra a una altitud de 1.738 metros sobre el nivel del mar,"
                              " msnm, con una temperatura media de 19° C.Se localiza a los 2°27' norte y 76°37'18 de longitud oeste del meridiano de Greenwich. "
                              "La población estimada es de 270.000 habitantes aproximadamente en su área urbana.",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
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
                              "Por Via Aerea:",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                            const Text(
                              "Popayán cuenta con servicio aéreo comercial que arriba al aeropuerto Guillermo León Valencia ubicado a escasa distancia del casco urbano. Por este medio,"
                              " dos aerolíneas comunican diariamente la ciudad con Cali y Bogotá, que son Avianca y Easyfly. "
                              "La única vía directa de comunicación con el municipio de Guapi es la aérea para lo cual una aerolínea estatal cubre la ruta.",
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
                                      image: AssetImage('assets/aerea.jpg'),
                                    ))),
                            SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Por Via Terrestre:",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                            const Text(
                              "La carretera Panamericana, que atraviesa el Cauca de Sur a Norte. Desde la ciudad de Pasto, hay 265 kilómetros hasta la ciudad de Popayán, desde Cali, 137 kilómetros;"
                              " y desde Neiva, 336 kilómetros, por la carretera de La Plata, desde la capital de Colombia Bogotá "
                              "hay aproximadamente 591.1 kilómetros a la ciudad de Popayán cauca por la carretera 25.",
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
                                      image: AssetImage('assets/terrestre.jpg'),
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
                                    SmallText(
                                      text: "4.5",
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SmallText(text: "1230"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SmallText(text: "Comentarios"),
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