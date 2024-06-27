import 'package:flutter/material.dart';

import '../../../barra.dart';
import '../../../widgets/small_text.dart';

class detalleshome extends StatefulWidget {
  const detalleshome({super.key});

  @override
  State<detalleshome> createState() => _detalleshomeState();
}

class _detalleshomeState extends State<detalleshome> {
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
     
      child: Scaffold(
         bottomNavigationBar: Home(),
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 90,
          backgroundColor: Colors.transparent,
          leading: Builder(builder: (BuildContext context) {
            return Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_outlined),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, '/principal');
                  },
                )
              ],
            );
          }),
          title: const Text(
            "         Playa de Copacabana",
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
                            image: AssetImage('assets/nueva/2.jpg'),
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
                                    "Playa de Copacabana Brasil",
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
                              "La playa de Copacabana es una de las más famosasy mundialmente conocidas playas de Brasil.Está ubicada en el barrio de Copacabana, en Río deJaneiro y destaca por su agitado ritmo además dela belleza de sus aguas."
                              " A Copacabana la forman 4 Kilómetros de arenablanca y aguas turquesas, sabrás que teencuentras en Copacabana porque es la más conocida y se llena de turistas y habitantes de laciudad todo el año.  "
                              "Los brasileños, acostumbradosya a recibir a millones de turistas siempre, son muy amables y pacientes con los que no entienden el idioma. ",
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
                              "¿Dónde se encuentra la playa de Copacabana?",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                            const Text(
                              " La playa de Copacabana se ubica en la costa al sur de Río de Janeiro, en la Av. Atlântica. Se puede llegar desde el centro de Copacabana en una caminata de 10 minutos.",
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
                                      image: AssetImage('assets/pla1.jpg'),
                                    ))),
                            SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Transporte Publico;",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromARGB(153, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(height: 10,),
                            const Text(
                              "Transporte Público A Rio De Janeiro En Centro¿Te Preguntas Cómo Llegar A Rio De Janeiro En Centro, Brasil? Moovit Te Ayuda A Encontrar La Mejor Manera De Llegar A Rio De Janeiro Con Indicaciones Paso A Paso Desde La Estación De Transporte Público Más Cercana.Moovit Proporciona Mapas Gratuitos Y Direcciones En Vivo Para Ayudarte A Navegar Por Tu Ciudad. Mira Los Horarios, Las Rutas, Los Servicios Y Descubre Cuánto Tiempo Vas A Tardar En Llegar A Rio De Janeiro En Tiempo Real.",
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
                                      image: AssetImage('assets/tran.jpg'),
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
                                     const Text("4.5",style:TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    ),

                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("1230",style:TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("Comentarios",style:TextStyle(
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
