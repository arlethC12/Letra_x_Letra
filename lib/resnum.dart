import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 30, // Ajusta la altura del AppBar
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ), // Espaciado horizontal
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.brown,
                ), // Flecha marrón
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Resga()),
                  );
                },
              ),
              Expanded(
                child: LinearProgressIndicator(
                  value: 0.40,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset('assets/num.jpg', height: 300),
            SizedBox(height: 10),
            Icon(
              Icons.volume_up,
              size: 40,
              color: Colors.grey,
            ), // Icono de bocina
            SizedBox(height: 10),
            Text(
              'Ingresa tu número',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixText: '+52',
                      prefixIcon: Icon(Icons.mic),
                      border: OutlineInputBorder(),
                      labelText: 'Número',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Acción del botón
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // Color de fondo
                foregroundColor: Colors.black, // Color del texto o iconos
              ),
              icon: Icon(Icons.arrow_forward),
              label: Text('CONTINUAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class Resga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla Resga')),
      body: Center(child: Text('¡Estás en la pantalla Resga!')),
    );
  }
}
