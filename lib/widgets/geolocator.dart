
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorWidget extends StatefulWidget {
  const GeoLocatorWidget({super.key});

  @override
  State<GeoLocatorWidget> createState() =>
      _GeoLocatorWidgetState();
}

class _GeoLocatorWidgetState extends State<GeoLocatorWidget> {

  Position? position;

  String locationMessage = 'Location not fetched yet';

  bool isLoading = false;

  Future<void> fetchposition() async {

    setState(() {
      isLoading = true;
      locationMessage = 'Fetching location...';
    });

    try {

      // Step 1: Check whether location service is enabled

      bool serviceEnabled =
      await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        setState(() {
          locationMessage = 'Please turn ON your GPS';
          isLoading = false;
        });
        return;
      }

      // Step 2: Check location permission

      LocationPermission permission =
      await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {

        permission = await Geolocator.requestPermission();

      }

      if (permission == LocationPermission.denied) {
        setState(() {
          locationMessage = 'Location permission denied';
          isLoading = false;
        });
        return;
      }

      // Step 3: Check permanent permission denial

      if (permission == LocationPermission.deniedForever) {
        setState(() {
          locationMessage =
          'Permission permanently denied. Please enable it in Settings.';
          isLoading = false;
        });
        return;
      }

      // Step 4: Get current position

      Position currentPosition =
      await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      // Step 5: Update UI

      if (!mounted) return;

      setState(() {
        position = currentPosition;

        locationMessage =
        'Latitude: ${currentPosition.latitude}\n\n'
            'Longitude: ${currentPosition.longitude}';

        isLoading = false;
      });

      // Print location in console

      print('Latitude: ${currentPosition.latitude}');
      print('Longitude: ${currentPosition.longitude}');

    } catch (e) {

      if (!mounted) return;

      setState(() {
        locationMessage = 'Error: $e';
        isLoading = false;
      });

      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Geolocator'),
        centerTitle: true,
      ),

      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.location_on,
                size: 80,
                color: Colors.red,
              ),

              const SizedBox(height: 20),

              const Text(
                'Current Location',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              if (isLoading)
                const CircularProgressIndicator()
              else
                Text(
                  locationMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

              const SizedBox(height: 30),

              ElevatedButton.icon(
                onPressed: isLoading ? null : fetchposition,
                icon: const Icon(Icons.my_location),
                label: const Text('Get Location'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
