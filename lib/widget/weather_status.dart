import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherStatus extends StatelessWidget {
  final String status;
  const WeatherStatus({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        status,
        style: GoogleFonts.ledger(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
