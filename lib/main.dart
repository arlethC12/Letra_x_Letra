import 'package:flutter/material.dart';
import 'registro.dart'; // Importa tu archivo registro.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'LETRA',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue,
                    fontFamily: 'Roboto', // Cambia el estilo de fuente aquí
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'X',
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w900,
                    color: Colors.red,
                    fontFamily: 'Roboto', // Cambia el estilo de fuente aquí
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'LETRA',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue,
                    fontFamily: 'Roboto', // Cambia el estilo de fuente aquí
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Imagen central
            Image.asset('assets/registro.jpg', width: 285, height: 285),
            const SizedBox(height: 30),

            // Ícono de bocina
            IconButton(
              icon: Icon(Icons.volume_up, color: Colors.black, size: 36),
              onPressed: () {
                // Aquí puedes implementar la funcionalidad de audio
              },
            ),
            const SizedBox(height: 20),

            // Botón "Regístrate"
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaInicio()),
                );
              },
              label: const Text(
                'Regístrate',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFE23B), // Amarillo
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 20,
                ),
              ),
              icon: const Icon(Icons.arrow_forward, color: Colors.black),
            ),
            const SizedBox(height: 20),

            // Botón "Inicia Sesión"
            ElevatedButton.icon(
              onPressed: () {
                // Navegación pendiente para "Inicia Sesión"
              },
              label: const Text(
                'Inicia Sesión',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFE23B), // Amarillo
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 20,
                ),
              ),
              icon: const Icon(Icons.arrow_forward, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
