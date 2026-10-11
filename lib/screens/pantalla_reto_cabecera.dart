import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaRetoCabecera extends StatelessWidget {
  const PantallaRetoCabecera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos Column para que la cabecera quede arriba y puedas añadir más cosas debajo
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 102, 80, 164),
              // Redondeamos solo las esquinas inferiores
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  // Color de la sombra
                  color: Color(0xAA6EB1E6),
                  offset: Offset(9, 9),
                  blurRadius: 6,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: const SafeArea(
              child: Text(
                'Soy una cabecera',
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Pantalla reto de cabecera.',
                textDirection: TextDirection.ltr,
                style: GoogleFonts.pacifico(fontSize: 32, color: Colors.indigo),
              ),
            ),
          ), // ¡Faltaban estos cierres!
        ],
      ),
    );
  }
}
