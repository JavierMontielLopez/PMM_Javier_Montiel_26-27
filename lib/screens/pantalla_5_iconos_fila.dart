import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pantalla5IconosFila extends StatelessWidget {
  const Pantalla5IconosFila({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '5 Iconos Fila',
          style: GoogleFonts.abel(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 102, 80, 164),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.home, size: 40, color: Colors.indigo),
            Icon(Icons.star, size: 40, color: Colors.amber),
            Icon(Icons.favorite, size: 40, color: Colors.red),
            Icon(Icons.camera_alt, size: 40, color: Colors.teal),
            Icon(Icons.settings, size: 40, color: Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}
