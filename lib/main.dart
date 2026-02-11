import 'package:flutter/material.dart';

void main() => runApp(ToursApp());

class ToursApp extends StatelessWidget {
  const ToursApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Usuario());
  }
} //Fin clase ToursApp

class Usuario extends StatelessWidget {
  const Usuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alejandro Aceves 6J',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: const Icon(Icons.payment, color: Colors.white),
          onPressed: () {
            // Acción de pago
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.airplanemode_active, color: Colors.white),
            onPressed: () {
              // Acción de vuelo
            },
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Acción de búsqueda
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: const [
          CustomCard(
            titulo: 'Alejandro Aceves',
            subtitulo: 'Usuario Comun',
            urlImagen: 'https://raw.githubusercontent.com/Alejandro-Aceves/Imagenes-Para-Flutter-Alejandro-Aceves-6J-11-FEB-2026/refs/heads/main/usuario1.png',
          ),
          CustomCard(
            titulo: 'Rodrigo Morales',
            subtitulo: 'Usuario Premium',
            urlImagen: 'https://raw.githubusercontent.com/Alejandro-Aceves/Imagenes-Para-Flutter-Alejandro-Aceves-6J-11-FEB-2026/refs/heads/main/usuario2.png',
          ),
          CustomCard(
            titulo: 'Estefania Hernandez',
            subtitulo: 'Usuario Comun',
            urlImagen: 'https://raw.githubusercontent.com/Alejandro-Aceves/Imagenes-Para-Flutter-Alejandro-Aceves-6J-11-FEB-2026/refs/heads/main/usuario3.png',
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String urlImagen;

  const CustomCard({
    super.key,
    required this.titulo,
    required this.subtitulo,
    required this.urlImagen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 12.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}