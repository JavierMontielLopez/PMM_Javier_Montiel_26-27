import 'package:flutter/material.dart';

import 'package:aplicacion_prueba/widgets/menu_lateral.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Primeras actividad Javier Montiel López',
      home: PantallaInicio(),
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Contenido de la cabecera de la app
      appBar: AppBar(
        title: Text(
          'Pantalla Inicio',
          style: GoogleFonts.abel(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 102, 80, 164),
      ),
      // Aqui dibujamos el menuLateral
      drawer: const MenuLateral(),
      // Contenido del body de la app
      body: Center(
        child: Text(
          'Pantalla de inicio',
          textDirection: TextDirection.ltr,
          style: GoogleFonts.pacifico(fontSize: 32, color: Colors.indigo),
        ),
      ),
    );
  }
}
