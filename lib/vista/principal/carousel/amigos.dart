import 'package:flutter/material.dart';

class story extends StatelessWidget {
  const story({
    Key? key,
    required this.img,
    required this.name,

  }) : super(key: key);
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 200),
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                     Color(0xffee0000),
                     Color(0xffeeee00),
                    ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 1),
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            
             CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(img),
            )
          ],
        ),
         Text(name),
      ],
    );
     
  }
}