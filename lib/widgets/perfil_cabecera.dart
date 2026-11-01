import 'package:flutter/material.dart';

// Widget que muestra la cabecera del perfil:
// foto de perfil circular + Puvlicaciones, Seguidores, Seguidos
class PerfilCabecera extends StatelessWidget {
  const PerfilCabecera({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      // Foto de perfil a la izquierda, estadísticas a la derecha
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(3.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.orange, Colors.pink],
              ),
            ),
            child: const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 37,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/id/64/200/200',
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildEstadistica('7,850', 'Publicaciones'),
                _buildEstadistica('8.2 M', 'Seguidores'),
                _buildEstadistica('1,754', 'Seguidos'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Método auxiliar que crea una Column con el número y la etiqueta
  Widget _buildEstadistica(String cantidad, String etiqueta) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          cantidad,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 2),
        Text(
          etiqueta,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
