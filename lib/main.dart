import 'package:flutter/material.dart';

void main() => runApp(const AppLavanderia());

class AppLavanderia extends StatelessWidget {
  const AppLavanderia({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lavanderia",
      home: Servicios(),
    );
  }
} //Fin AppLavanderia

class Servicios extends StatelessWidget {
  const Servicios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lavanderia Campoya 6J',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 2, 172, 251),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.black),
          onPressed: () {
            // Acción de la cámara
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.local_laundry_service, color: Colors.black),
            onPressed: () {
              // Acción de la lavadora
            },
          ),
          IconButton(
            icon: const Icon(Icons.dry_cleaning, color: Colors.black),
            onPressed: () {
              // Acción de la secadora
            },
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 4,
        separatorBuilder: (context, index) => const SizedBox(height: 12), // Espa cio entre tarjetas
        itemBuilder: (context, index) {
          // Definimos una lista de colores modernos y vibrantes
          final List<Color> colors = [
            Colors.indigoAccent,
            Colors.tealAccent.shade700,
            Colors.orangeAccent.shade400,
            Colors.pinkAccent,
          ];

          final List<IconData> icons = [
            Icons.rocket_launch,
            Icons.bolt,
            Icons.favorite,
            Icons.auto_awesome,
          ];

          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              leading: CircleAvatar(
                backgroundColor: colors[index].withOpacity(0.2),
                child: Icon(icons[index], color: colors[index]),
              ),
              title: Text(
                'Elemento ${index + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: const Text('Descripción moderna y minimalista'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[400]),
              onTap: () {
                // Acción al presionar
              },
            ),
          );
        },
      ),
    );
  }
} // fin Servicios