import 'package:flutter/material.dart';

// Widget que muestra las historias destacadas del perfil.
class PerfilHistorias extends StatelessWidget {
  const PerfilHistorias({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para las historias destacadas
    final List<Map<String, String>> historias = [
      {
        'nombre': 'ARTIST TAK...',
        'imagen': 'https://picsum.photos/id/175/100/100',
      },
      {'nombre': 'YOUTUBE', 'imagen': 'https://picsum.photos/id/180/100/100'},
      {
        'nombre': 'LUX LIPSTI...',
        'imagen': 'https://picsum.photos/id/192/100/100',
      },
      {'nombre': 'BTS', 'imagen': 'https://picsum.photos/id/200/100/100'},
      {
        'nombre': 'CONCEALERS',
        'imagen': 'https://picsum.photos/id/209/100/100',
      },
      {'nombre': 'TUTORIALS', 'imagen': 'https://picsum.photos/id/219/100/100'},
      {'nombre': 'PALETTES', 'imagen': 'https://picsum.photos/id/225/100/100'},
      {'nombre': 'NEW DROPS', 'imagen': 'https://picsum.photos/id/237/100/100'},
    ];

    return SizedBox(
      height: 100,
      // ListView.builder horizontal para las historias
      // Esto permite hacer scroll lateral si hay más historias de las que caben
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        itemCount: historias.length,
        itemBuilder: (context, index) {
          return _buildHistoria(
            historias[index]['nombre']!,
            historias[index]['imagen']!,
          );
        },
      ),
    );
  }

  // Método que construye cada historia destacada
  Widget _buildHistoria(String nombre, String urlImagen) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      // Column: imagen circular arriba, texto abajo
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade300, width: 1.5),
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: NetworkImage(urlImagen),
            ),
          ),
          const SizedBox(height: 4),
          // Nombre de la historia con tamaño pequeño
          SizedBox(
            width: 72,
            child: Text(
              nombre,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
