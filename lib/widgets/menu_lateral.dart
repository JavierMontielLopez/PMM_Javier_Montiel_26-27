// Importamos todas las pantallas necesarias para poder hacer el menú lateral
import 'package:aplicacion_prueba/screens/pantalla_disenio_responsive.dart';
import 'package:aplicacion_prueba/screens/pantalla_nombre_github.dart';
import 'package:aplicacion_prueba/screens/pantalla_foto_nombre.dart';
import 'package:aplicacion_prueba/screens/pantalla_3fotos_columna.dart';
import 'package:aplicacion_prueba/screens/pantalla_3fotos_repetidas.dart';
import 'package:aplicacion_prueba/screens/pantalla_3textos_desborde.dart';
import 'package:aplicacion_prueba/screens/pantalla_3textos_desborde_paquete.dart';
import 'package:aplicacion_prueba/screens/pantalla_5_iconos_fila.dart';
import 'package:aplicacion_prueba/screens/pantalla_5_imagenes_columa.dart';
import 'package:aplicacion_prueba/screens/pantalla_reto_cabecera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Javier Montiel López'),
            accountEmail: Text('jmonlop0804@g.educaand.es'),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Colors.indigo),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.text_fields),
            title: Text(
              'Nombre completo y Repositorio',
              style: GoogleFonts.abel(),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PantallaNombreGithub(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: Text('Foto con nombre', style: GoogleFonts.abel()),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PantallaFotoNombre(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: Text('3 Fotos Columna', style: GoogleFonts.abel()),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pantalla3fotosColumna(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.air),
            title: Text('5 Iconos Fila', style: GoogleFonts.abel()),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pantalla5IconosFila(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.camera),
            title: Text('5 Imágenes Columna', style: GoogleFonts.abel()),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pantalla5ImagenesColuma(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.text_rotation_none),
            title: Text('3 Textos desborde', style: GoogleFonts.abel()),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pantalla3textosDesborde(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.text_rotation_down),
            title: Text(
              '3 Textos desborde con paquete de texto',
              style: GoogleFonts.abel(),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pantalla3textosDesbordePaquete(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.network(
              'https://fastly.picsum.photos/id/29/4000/2670.jpg?hmac=rCbRAl24FzrSzwlR5tL-Aqzyu5tX_PA95VJtnUXegGU',
              width: 40,
            ),
            title: Text(
              '3 Textos desborde con paquete de texto',
              style: GoogleFonts.abel(),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pantalla3fotosRepetidas(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.display_settings_outlined),
            title: Text('Diseño responsive', style: GoogleFonts.abel()),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const pantalla_disenio_responsive(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.receipt_rounded),
            title: Text('Reto Web', style: GoogleFonts.abel()),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PantallaRetoCabecera(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
