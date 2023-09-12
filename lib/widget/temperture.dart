import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Temperature extends StatelessWidget {
  final String temp;
  const Temperature({super.key, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: temp.split(".").first,
          style: GoogleFonts.ledger(fontSize: 120, color: Colors.black),
          children: const [
            TextSpan(
              text: '°',
            ),
          ],
        ),
      ),
    );
  }
}
