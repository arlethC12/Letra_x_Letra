import 'package:flutter/material.dart';
import 'resnum.dart'; // Cambia la ruta según la ubicación real del archivo resnum.dart.

void main() {
  runApp(Resga());
}

class Resga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina el debug banner.
      home: Scaffold(
        backgroundColor: Colors.white, // Fondo blanco.
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(
            60,
          ), // Ajusta la altura del AppBar.
          child: AppBar(
            backgroundColor: Colors.transparent, // Fondo transparente.
            elevation: 0, // Sin sombra.
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.orange,
                size: 37,
              ), // Flecha naranja más grande.
              onPressed: () {
                Navigator.pop(context); // Regresa a la pantalla anterior.
              },
            ),
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LinearProgressIndicator(
                  value: 0.75, // Avance ajustado al 75% (penúltima pestaña).
                  backgroundColor:
                      Colors.grey.shade300, // Fondo de la barra de progreso.
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.yellow,
                  ), // Color del progreso.
                  minHeight: 10, // Altura de la barra.
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              // Imagen del jaguar.
              Image.asset(
                'assets/añojaguar.jpg', // Asegúrate de colocar esta imagen en la carpeta assets.
                height: 250,
              ),
              const SizedBox(height: 20),
              // Ícono de bocina debajo de la imagen.
              const Icon(Icons.volume_up, size: 30, color: Colors.black),
              const SizedBox(height: 20),
              // Texto principal.
              const Text(
                '¿Cuántos años tienes?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Campo de texto con ícono de micrófono.
              TextField(
                decoration: InputDecoration(
                  hintText: '6',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                  suffixIcon: const Icon(
                    Icons.mic,
                    color: Colors.black,
                  ), // Ícono de micrófono añadido.
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 40),
              // Botón amarillo con texto y flecha negra.
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              MyHomePage(), // Redirige a la pantalla en resnum.dart.
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "CONTINUAR",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(width: 9), // Espaciado entre el texto y la flecha.
                    Icon(Icons.arrow_forward, size: 24, color: Colors.black),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
