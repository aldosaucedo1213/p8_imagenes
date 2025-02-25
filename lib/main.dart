import 'package:flutter/material.dart';

void main() => runApp(const MiImagen());

class MiImagen extends StatelessWidget {
  const MiImagen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mis Imágenes"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            // Usamos Column para mostrar las imágenes una arriba de la otra
            mainAxisAlignment: MainAxisAlignment
                .center, // Centramos las imágenes verticalmente
            children: <Widget>[
              const Text(
                  "aldo daniel saucedo de luna 22308051281310"), // Texto adicional
              Image.network(
                'https://raw.githubusercontent.com/aldosaucedo1213/imagenes-para-APP-flutter-6J/refs/heads/main/tamal2.jpg', // URL de la primera imagen
                width: 200, // Ancho opcional
                height: 200, // Alto opcional
              ),
              const SizedBox(height: 20), // Espacio entre las imágenes
              const Text(
                "Tamal oaxaqueño en GitHub",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ), // Texto descriptivo
              const SizedBox(
                  height: 20), // Espacio entre el texto y la siguiente imagen
              const Text(
                "Tamal rojo en GitHub",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Color(0xdd2e1111),
                ),
              ), // Segundo texto descriptivo
              const SizedBox(height: 20), // Espacio adicional
              Image.network(
                'https://raw.githubusercontent.com/aldosaucedo1213/imagenes-para-APP-flutter-6J/refs/heads/main/tamales1.jpg', // URL de la segunda imagen
                width: 200, // Ancho opcional
                height: 200, // Alto opcional
              ),
            ],
          ),
        ),
      ), // Scaffold
    ); // MaterialApp
  } // Widget build
} // Class MiImagen
