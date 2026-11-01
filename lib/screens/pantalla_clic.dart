import 'package:flutter/material.dart';

class PantallaContador extends StatefulWidget {
  const PantallaContador({super.key});

  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}

class _PantallaContadorState extends State<PantallaContador> {
  // Variable que guarda el número actual
  int contador = 0;

  // Función Sumar
  void sumarContador() {
    setState(() {
      contador++;
    });
  }

  // Función Restar
  void restarContador() {
    setState(() {
      contador--;
    });
  }

  // Función Reiniciar a 0
  void reiniciarContador() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contador Mejorado',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 102, 80, 164),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Valor actual del contador:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              // Mostramos la variable
              '$contador',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Botón de Reiniciar
          FloatingActionButton(
            // Llamamos a la función de reiniciar
            onPressed: reiniciarContador,
            backgroundColor: Colors.redAccent,
            tooltip: 'Resetear a cero',
            child: const Icon(Icons.refresh, color: Colors.white),
          ),
          // Separación entre botones
          const SizedBox(width: 15),
          // Botón de Restar
          FloatingActionButton(
            // Llamamos a la función de restar
            onPressed: restarContador,
            backgroundColor: Colors.orangeAccent,
            tooltip: 'Decrementar',
            child: const Icon(Icons.remove, color: Colors.white),
          ),
          // Separación entre botones
          const SizedBox(width: 15),
          // Botón de Sumar
          FloatingActionButton(
            // Llamamos a la función de sumar
            onPressed: sumarContador,
            backgroundColor: Colors.green,
            tooltip: 'Incrementar',
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
