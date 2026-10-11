import 'package:flutter/material.dart';

class pantalla_disenio_responsive extends StatelessWidget {
  const pantalla_disenio_responsive({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;

    // Si el ancho es menor a 600, es móvil
    bool isMobile = width < 600;

    final List<Map<String, String>> elementos = [
      {'titulo': 'Montaña', 'img': 'https://picsum.photos/id/1018/300/300'},
      {'titulo': 'Playa', 'img': 'https://picsum.photos/id/13/2500/1667'},
      {'titulo': 'Bosque', 'img': 'https://picsum.photos/id/1043/300/300'},
      {'titulo': 'Ciudad', 'img': 'https://picsum.photos/id/43/1280/831'},
      {'titulo': 'Faro', 'img': 'https://picsum.photos/id/58/1280/853'},
      {'titulo': 'Desierto', 'img': 'https://picsum.photos/id/46/3264/2448'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Galería Responsive"),
        backgroundColor: Colors.blueAccent,
      ),
      // GridView.builder para la cuadrícula
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // APLICAMOS EL RESPONSIVE: 2 columnas en móvil, 4 en PC/Tablet
          crossAxisCount: isMobile ? 2 : 4,
          crossAxisSpacing: 10.0, // Espaciado entre columnas
          mainAxisSpacing: 10.0, // Espaciado entre filas
        ),
        itemCount: elementos.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.grey[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Expanded asegura que la imagen ocupe el espacio disponible sin desbordar
                Expanded(
                  child: Image.network(
                    elementos[index]['img']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                // Espacio entre imagen y texto
                const SizedBox(height: 8),
                Text(
                  elementos[index]['titulo']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                // Espacio entre imagen y texto
                const SizedBox(height: 8),
              ],
            ),
          );
        },
      ),
    );
  }
}
