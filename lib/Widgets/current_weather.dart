import 'package:flutter/material.dart';
import 'package:weather_app/Constants/palette.dart';
import 'package:weather_app/Widgets/small_container.dart';

Widget currentWeather(context,
    {name,
    region,
    country,
    localTime,
    tempC,
    currentCondition,
    windSpeed,
    humidity,
    icon,
    pressureMb,
    feelslikeC,
    visKm,
    uv}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      //height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.purpleAccent, Palette.white],
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(color: Palette.white, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(region + ', ',
                              style: TextStyle(color: Palette.white)),
                          Text(country, style: TextStyle(color: Palette.white)),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    localTime,
                    style: TextStyle(color: Palette.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      '$tempC°C',
                      style: TextStyle(color: Palette.white, fontSize: 50),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Image.network(
                      'https:$icon',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    currentCondition,
                    style: TextStyle(
                        color: Palette.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                              child: Image.asset(
                                'assets/icons/wind.png',
                                fit: BoxFit.cover,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(windSpeed.toString(),
                              style: TextStyle(color: Palette.white)),
                          Text('Kph', style: TextStyle(color: Palette.white))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                              child: Image.asset(
                                'assets/icons/humidity.png',
                                fit: BoxFit.cover,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(humidity.toString(),
                              style: TextStyle(color: Palette.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                smallContainer(
                  context,
                  name: 'Pressure (mb)',
                  data: pressureMb,
                ),
                smallContainer(
                  context,
                  name: 'Feels like (°C)',
                  data: feelslikeC,
                ),
                smallContainer(
                  context,
                  name: 'Visibility (km)',
                  data: visKm,
                ),
                smallContainer(
                  context,
                  name: 'UltraViloet',
                  data: uv,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
