import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Temperature extends StatelessWidget {
  const Temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: '30',
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
