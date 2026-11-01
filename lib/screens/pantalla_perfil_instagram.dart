import 'package:flutter/material.dart';

// Importamos todos los widgets que hemos creado en archivos separados
import 'package:aplicacion_prueba/widgets/perfil_cabecera.dart';
import 'package:aplicacion_prueba/widgets/perfil_info.dart';
import 'package:aplicacion_prueba/widgets/perfil_botones.dart';
import 'package:aplicacion_prueba/widgets/perfil_historias.dart';
import 'package:aplicacion_prueba/widgets/perfil_grid_fotos.dart';

// Pantalla principal del perfil Instagram.
class PantallaPerfilInstagram extends StatelessWidget {
  const PantallaPerfilInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // AppBar con el nombre de usuario y los iconos
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'colourpopcosmetics',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.verified, color: Colors.blue, size: 18),
          ],
        ),
        actions: const [
          Icon(Icons.add_box_outlined, color: Colors.black, size: 26),
          SizedBox(width: 16),
          Icon(Icons.menu, color: Colors.black, size: 26),
          SizedBox(width: 12),
        ],
      ),
      // SingleChildScrollView permite hacer scroll en toda la pantalla dividida en columnas
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabecera con foto y estadísticas
            const PerfilCabecera(),

            // Información del perfil
            const PerfilInfo(),

            // Botones de acción
            const PerfilBotones(),

            // Historias destacadas
            const PerfilHistorias(),

            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1.5),
                      ),
                    ),
                    child: const Icon(
                      Icons.grid_on,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.grey.shade400,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 2),

            // Sección de fotos.
            const PerfilGridFotos(),
          ],
        ),
      ),
    );
  }
}
