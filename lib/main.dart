import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // Import for LatLng class

class OpenStreetMapScreen extends StatelessWidget {
  const OpenStreetMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OpenStreetMap'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(51.5, -0.09), // Center of the map, London coordinates
          zoom: 13.0, // Initial zoom level
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'], // OSM tile servers
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: OpenStreetMapScreen(),
  ));
}
