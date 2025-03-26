import 'package:flutter/material.dart';
import 'resga.dart'; // Cambia la ruta según sea necesario.

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PantallaInicio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          60,
        ), // Ajusta la altura del AppBar.
        child: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.orange,
              size: 37,
            ), // Flecha naranja.
            onPressed: () {
              Navigator.pop(context); // Regresa a la pantalla anterior.
            },
          ),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LinearProgressIndicator(
                value: 0.5, // Avance (ajusta este valor según sea necesario).
                backgroundColor: Colors.grey.shade300, // Color de fondo.
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Colors.yellow,
                ), // Color amarillo para el progreso.
                minHeight: 10, // Hace que la barra de progreso sea más gruesa.
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Center(
              child: Image.asset(
                'assets/nombre.jpg', // Asegúrate de colocar la imagen en la carpeta assets y configurarla en pubspec.yaml.
                width: 320,
                height: 320,
              ),
            ),
            const SizedBox(height: 0), // Espaciado minimizado.
            Center(
              child: Icon(
                Icons.volume_up,
                color: Colors.black,
                size: 30, // Ícono de bocina.
              ),
            ),
            const SizedBox(height: 8), // Espaciado reducido hacia la pregunta.
            const Center(
              child: Text(
                "¿Cuál es tu nombre?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "Tu nombre es...",
                suffixIcon: const Icon(
                  Icons.mic,
                  color: Colors.black,
                ), // Ícono de micrófono en el cajón de texto.
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.yellow, // Botón amarillo.
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resga(),
                  ), // Redirige a regsaño.dart.
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "CONTINUAR",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(width: 9), // Espaciado entre el texto y la flecha.
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ), // Flecha negra apuntando a la derecha.
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
