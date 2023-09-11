import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherStatus extends StatelessWidget {
  const WeatherStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sunny',
        style: GoogleFonts.ledger(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
