import 'package:flutter/material.dart';

import 'widgets/bottom_details.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherForecast(),
    );
  }
}

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({super.key});

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Weather Forecast',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _field(),
        const SizedBox(
          height: 20,
        ),
        _cityDetail(),
        const SizedBox(
          height: 40,
        ),
        _temperatureDetail(),
        const SizedBox(
          height: 40,
        ),
        _extraWeatherDetail(),
        const SizedBox(
          height: 60,
        ),
        Text(
          '7-day weather forecast'.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 200, // Set a specific height here
          child: _bottomDetail(),
        ),
      ],
    ),
  );
}

SizedBox _field() {
  return const SizedBox(
    width: 400,
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        border: InputBorder.none,
        labelText: 'Enter City Name',
        labelStyle: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        contentPadding: EdgeInsets.all(
          16,
        ),
      ),
    ),
  );
}

Column _cityDetail() {
  return const Column(
    children: [
      Text(
        "Khmelnytska oblast, UA",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        'Friday, Aug 09, 2023',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.wb_sunny,
        color: Colors.white,
        size: 75,
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '14 °F'.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            'Light snow'.toUpperCase(),
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    ],
  );
}

Row _extraWeatherDetail() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30,
          ),
          Text(
            '5',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            'km/hr',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 80,
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30,
          ),
          Text(
            '3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            '%',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 80,
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30,
          ),
          Text(
            '20',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            '%',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ],
  );
}

ListView _bottomDetail() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: const [
      BottomDetails(
        textDay: 'Monday',
        textTemperature: '6 °F',
        icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
      ),
      BottomDetails(
        textDay: 'Tuesday',
        textTemperature: '6 °F',
        icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
      ),
      BottomDetails(
        textDay: 'Wednesday',
        textTemperature: '6 °F',
        icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
      ),
      BottomDetails(
        textDay: 'Thursday',
        textTemperature: '6 °F',
        icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
      ),
      BottomDetails(
        textDay: 'Friday',
        textTemperature: '6 °F',
        icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
      ),
      BottomDetails(
        textDay: 'Saturday',
        textTemperature: '6 °F',
        icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
      ),
      BottomDetails(
        textDay: 'Sunday',
        textTemperature: '6 °F',
        icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
      ),
    ],
  );
}
