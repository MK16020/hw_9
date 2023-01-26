import 'package:flutter/material.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition = CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps Demo'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kInitialPosition,
          ),
          Positioned(
              child: Card(
            child: Column(
              children: [
                const ListTile(
                  leading: Text('Jamuna Future Park'),
                  subtitle: Text('Kuril Daka'),
                  trailing: Text('10\$'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Book Now'),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
