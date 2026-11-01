import 'package:flutter/material.dart';

// Widget que muestra la cuadrícula de fotos de las publicaciones.
// Usa un GridView.builder para crear una cuadrícula de 3 columnas
class PerfilGridFotos extends StatelessWidget {
  const PerfilGridFotos({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de URLs de imágenes para la cuadrícula
    final List<String> urlsFotos = [
      'https://picsum.photos/id/1/300/300',
      'https://picsum.photos/id/10/300/300',
      'https://picsum.photos/id/20/300/300',
      'https://picsum.photos/id/30/300/300',
      'https://picsum.photos/id/40/300/300',
      'https://picsum.photos/id/50/300/300',
      'https://picsum.photos/id/60/300/300',
      'https://picsum.photos/id/70/300/300',
      'https://picsum.photos/id/80/300/300',
      'https://picsum.photos/id/90/300/300',
      'https://picsum.photos/id/100/300/300',
      'https://picsum.photos/id/110/300/300',
      'https://picsum.photos/id/120/300/300',
      'https://picsum.photos/id/130/300/300',
      'https://picsum.photos/id/140/300/300',
      'https://picsum.photos/id/150/300/300',
      'https://picsum.photos/id/160/300/300',
      'https://picsum.photos/id/170/300/300',
    ];

    // GridView.builder crea una cuadrícula de 3 columnas
    return GridView.builder(
      // shrinkWrap: true para que el GridView no ocupe todo el espacio
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(2.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ),
      itemCount: urlsFotos.length,
      itemBuilder: (context, index) {
        return Image.network(
          urlsFotos[index],
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: Colors.grey.shade200,
              child: const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            );
          },
          // Si hay error al cargar, mostramos un icono
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey.shade200,
              child: const Icon(Icons.broken_image, color: Colors.grey),
            );
          },
        );
      },
    );
  }
}
