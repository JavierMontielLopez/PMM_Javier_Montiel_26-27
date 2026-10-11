import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pantalla3fotosRepetidas extends StatelessWidget {
  const Pantalla3fotosRepetidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '3 fotos Columna',
          style: GoogleFonts.abel(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 102, 80, 164),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://fastly.picsum.photos/id/29/4000/2670.jpg?hmac=rCbRAl24FzrSzwlR5tL-Aqzyu5tX_PA95VJtnUXegGU',
              width: 150,
            ),
            // Introducimos un peque hueco entre cada foto
            const SizedBox(height: 25),
            Image.asset(
              'assets/img/fotos_montaña.jpg',
              width: 150,
              fit: BoxFit.cover,
            ),
            // Introducimos un peque hueco entre cada foto
            const SizedBox(height: 25),
            Image.network(
              'https://fastly.picsum.photos/id/29/4000/2670.jpg?hmac=rCbRAl24FzrSzwlR5tL-Aqzyu5tX_PA95VJtnUXegGU',
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
