import 'package:flutter/material.dart';

/// Widget que muestra la información del perfil:
/// nombre, categoría, descripción, hashtag y enlace.
/// Usa una Column para apilar los textos verticalmente.
class PerfilInfo extends StatelessWidget {
  const PerfilInfo({super.key});

  @override
  Widget build(BuildContext context) {
    // Column para apilar toda la info del perfil verticalmente
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nombre del perfil en negrita
          Text(
            'ColourPop Cosmetics',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2),
          // Categoría del perfil en gris
          Text(
            'Health/Beauty',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 2),
          // Ubicación con emoji
          Text('Made in LA 🌴', style: TextStyle(fontSize: 14)),
          SizedBox(height: 2),
          // Texto con emojis
          Text('Cruelty Free 🐰🌿', style: TextStyle(fontSize: 14)),
          SizedBox(height: 2),
          // Hashtag en color azul
          Text(
            '#ColourPopMe',
            style: TextStyle(fontSize: 14, color: Colors.blue),
          ),
          SizedBox(height: 2),
          // Enlace en color azul
          Text(
            'bit.ly/2w9g74q',
            style: TextStyle(fontSize: 14, color: Colors.blue),
          ),
          SizedBox(height: 4),
          // Texto de "Followed by..."
          Text(
            'Followed by sejiexx, thedailyconcealer\nand 22 others',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
