import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class Pantalla3textosDesbordePaquete extends StatelessWidget {
  const Pantalla3textosDesbordePaquete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '3 Textos desborde con paquete de texto',
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
                // 1. QUITAMOS el const de aquí:
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit taciti ultrices nibh, quisque pulvinar viverra mi enim hendrerit suspendisse sagittis praesent posuere lectus, lacinia ornare leo sociosqu massa justo nullam luctus sed. Nisl per penatibus habitant tellus himenaeos blandit class facilisi, primis imperdiet dui fames mattis sollicitudin sapien sodales cubilia, erat a ad vulputate pretium lobortis nec. Cursus aenean rhoncus mauris ligula volutpat inceptos lacus quam purus, litora semper natoque commodo id turpis faucibus odio, venenatis aliquam tristique felis accumsan eget feugiat morbi. Sociis facilisis phasellus torquent magna augue consequat nisi, bibendum curabitur ante velit interdum non fermentum integer, tortor pellentesque pharetra aliquet est dignissim.',
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Leer más',
                  trimExpandedText: ' Ocultar',
                  style: const TextStyle(
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
                // 1. QUITAMOS el const de aquí:
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit taciti ultrices nibh, quisque pulvinar viverra mi enim hendrerit suspendisse sagittis praesent posuere lectus, lacinia ornare leo sociosqu massa justo nullam luctus sed. Nisl per penatibus habitant tellus himenaeos blandit class facilisi, primis imperdiet dui fames mattis sollicitudin sapien sodales cubilia, erat a ad vulputate pretium lobortis nec. Cursus aenean rhoncus mauris ligula volutpat inceptos lacus quam purus, litora semper natoque commodo id turpis faucibus odio, venenatis aliquam tristique felis accumsan eget feugiat morbi. Sociis facilisis phasellus torquent magna augue consequat nisi, bibendum curabitur ante velit interdum non fermentum integer, tortor pellentesque pharetra aliquet est dignissim.',
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Leer más',
                  trimExpandedText: ' Ocultar',
                  style: const TextStyle(
                    fontFamily: 'Isometra',
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
                // 1. QUITAMOS el const de aquí:
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit taciti ultrices nibh, quisque pulvinar viverra mi enim hendrerit suspendisse sagittis praesent posuere lectus, lacinia ornare leo sociosqu massa justo nullam luctus sed. Nisl per penatibus habitant tellus himenaeos blandit class facilisi, primis imperdiet dui fames mattis sollicitudin sapien sodales cubilia, erat a ad vulputate pretium lobortis nec. Cursus aenean rhoncus mauris ligula volutpat inceptos lacus quam purus, litora semper natoque commodo id turpis faucibus odio, venenatis aliquam tristique felis accumsan eget feugiat morbi. Sociis facilisis phasellus torquent magna augue consequat nisi, bibendum curabitur ante velit interdum non fermentum integer, tortor pellentesque pharetra aliquet est dignissim.',
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Leer más',
                  trimExpandedText: ' Ocultar',
                  style: const TextStyle(
                    fontFamily: 'Isometra',
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
