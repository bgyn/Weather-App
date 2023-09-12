import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/api_service/weather_service.dart';
import 'package:weather_app/model/current_weather_model.dart';
import 'package:weather_app/widget/date_time.dart';
import 'package:weather_app/widget/detail_summary.dart';
import 'package:weather_app/widget/temperture.dart';
import 'package:weather_app/widget/weather_detail.dart';
import 'package:weather_app/widget/weather_status.dart';
import 'package:weather_app/widget/weekly_forecast.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final weatherService = WeatherService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
      onRefresh: () async {
        setState(() {});
      },
      child: FutureBuilder<CurrentWeatherModel>(
        future: weatherService.fetchCurrentWeather(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      snapshot.data!.name,
                      style: GoogleFonts.ledger(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DateTimeWidget(dateTime: snapshot.data!.dt),
                  const SizedBox(
                    height: 20,
                  ),
                  WeatherStatus(
                    status: snapshot.data!.weather![0].main!.toString(),
                  ),
                  Temperature(
                    temp: snapshot.data!.main!.temp.toString(),
                  ),
                  DetailSummary(
                    maxTemp: snapshot.data!.main!.tempMax.toString(),
                    minTemp: snapshot.data!.main!.tempMin.toString(),
                    feelsLike: snapshot.data!.main!.feelsLike.toString(),
                    description:
                        snapshot.data!.weather![0].description.toString(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  WeatherDetail(
                    humidity: snapshot.data!.main!.humidity.toString(),
                    windSpeed: snapshot.data!.wind!.speed.toString(),
                    visibility: snapshot.data!.visibility,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const WeeklyForecast(),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    ));
  }
}
