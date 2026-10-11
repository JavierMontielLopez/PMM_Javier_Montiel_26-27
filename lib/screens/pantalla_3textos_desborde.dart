import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pantalla3textosDesborde extends StatelessWidget {
  const Pantalla3textosDesborde({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '3  Textos Fila Desbordante',
          style: GoogleFonts.abel(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 102, 80, 164),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // PRIMER TEXTO
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colors.amber,
                child: const Text(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit taciti ultrices nibh, quisque pulvinar viverra mi enim hendrerit suspendisse sagittis praesent posuere lectus, lacinia ornare leo sociosqu massa justo nullam luctus sed. Nisl per penatibus habitant tellus himenaeos blandit class facilisi, primis imperdiet dui fames mattis sollicitudin sapien sodales cubilia, erat a ad vulputate pretium lobortis nec. Cursus aenean rhoncus mauris ligula volutpat inceptos lacus quam purus, litora semper natoque commodo id turpis faucibus odio, venenatis aliquam tristique felis accumsan eget feugiat morbi. Sociis facilisis phasellus torquent magna augue consequat nisi, bibendum curabitur ante velit interdum non fermentum integer, tortor pellentesque pharetra aliquet est dignissim. Hac dictumst at fusce cum tempor, vivamus nam et dictum convallis netus, libero ultricies orci potenti.',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis, // Desborde en ellipsis
                  style: TextStyle(
                    fontFamily: 'Isometra',
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // SEGUNDO TEXTO
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colors.blue,
                child: const Text(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit taciti ultrices nibh, quisque pulvinar viverra mi enim hendrerit suspendisse sagittis praesent posuere lectus, lacinia ornare leo sociosqu massa justo nullam luctus sed. Nisl per penatibus habitant tellus himenaeos blandit class facilisi, primis imperdiet dui fames mattis sollicitudin sapien sodales cubilia, erat a ad vulputate pretium lobortis nec. Cursus aenean rhoncus mauris ligula volutpat inceptos lacus quam purus, litora semper natoque commodo id turpis faucibus odio, venenatis aliquam tristique felis accumsan eget feugiat morbi. Sociis facilisis phasellus torquent magna augue consequat nisi, bibendum curabitur ante velit interdum non fermentum integer, tortor pellentesque pharetra aliquet est dignissim. Hac dictumst at fusce cum tempor, vivamus nam et dictum convallis netus, libero ultricies orci potenti.',
                  maxLines: 3,
                  overflow: TextOverflow.fade, // Desborde en fade
                  style: TextStyle(
                    fontFamily: 'EduQLDHand',
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // TERCER TEXTO
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colors.green,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit taciti ultrices nibh, quisque pulvinar viverra mi enim hendrerit suspendisse sagittis praesent posuere lectus, lacinia ornare leo sociosqu massa justo nullam luctus sed. Nisl per penatibus habitant tellus himenaeos blandit class facilisi, primis imperdiet dui fames mattis sollicitudin sapien sodales cubilia, erat a ad vulputate pretium lobortis nec. Cursus aenean rhoncus mauris ligula volutpat inceptos lacus quam purus, litora semper natoque commodo id turpis faucibus odio, venenatis aliquam tristique felis accumsan eget feugiat morbi. Sociis facilisis phasellus torquent magna augue consequat nisi, bibendum curabitur ante velit interdum non fermentum integer, tortor pellentesque pharetra aliquet est dignissim. Hac dictumst at fusce cum tempor, vivamus nam et dictum convallis netus, libero ultricies orci potenti.',
                  maxLines: 3,
                  overflow: TextOverflow.clip, // Desborde Clip
                  style: GoogleFonts.oswald(fontSize: 26, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
