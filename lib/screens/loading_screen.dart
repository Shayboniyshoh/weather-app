import 'package:flutter/material.dart';
import 'package:weather_app/screens/location_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Get the current location
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LocationScreen(),
              ),
            );
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}
