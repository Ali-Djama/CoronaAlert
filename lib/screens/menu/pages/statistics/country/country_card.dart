import 'package:flutter/material.dart';
import 'package:coronaalert/constants.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key key,
    @required this.countryName,
    @required this.countryFlag,
    @required this.totalCasesOfCountry,
    @required this.todayCasesOfCountry,
    @required this.activeCasesOfCountry,
    @required this.deaths,
    @required this.recoveredOfCountry,
  }) : super(key: key);

  final String countryName;
  final String countryFlag;
  final String totalCasesOfCountry;
  final String todayCasesOfCountry;
  final String activeCasesOfCountry;
  final String deaths;
  final String recoveredOfCountry;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$countryName',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Image.network(
                  '$countryFlag',
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '📌 Total Cases: $totalCasesOfCountry',
                  style: kCountryCardTextStyle,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '📈 Today\'s Cases: $todayCasesOfCountry',
                  style: kCountryCardTextStyle,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '🔔 Active Cases: $activeCasesOfCountry',
                  style: kCountryCardTextStyle,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '💀 Deaths: $deaths',
                  style: kCountryCardTextStyle,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '✔ Recovered: $recoveredOfCountry',
                  style: kCountryCardTextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}