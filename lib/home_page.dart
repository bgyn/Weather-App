import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/widget/date_time.dart';
import 'package:weather_app/widget/detail_summary.dart';
import 'package:weather_app/widget/temperture.dart';
import 'package:weather_app/widget/weather_detail.dart';
import 'package:weather_app/widget/weather_status.dart';
import 'package:weather_app/widget/weekly_forecast.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Location",
          style: GoogleFonts.ledger(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const DateTimeWidget(),
            const SizedBox(
              height: 20,
            ),
            const WeatherStatus(),
            const Temperature(),
            DetailSummary(),
            const SizedBox(
              height: 20,
            ),
            WeatherDetail(),
            const SizedBox(
              height: 20,
            ),
            const WeeklyForecast(),
          ],
        ),
      ),
    );
  }
}
