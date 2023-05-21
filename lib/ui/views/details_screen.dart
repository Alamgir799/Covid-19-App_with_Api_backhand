// ignore_for_file: prefer_const_constructors

import 'package:covid_19/ui/views/world_state_screen.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  Map detailsData;
  DetailsScreen({required this.detailsData});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.detailsData['name'].toString()),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .06),
                      ReusableRow(
                          title: "Cases",
                          value: widget.detailsData["totalCases"].toString()),
                      ReusableRow(
                          title: "Cases",
                          value: widget.detailsData["totalCases"].toString()),
                      ReusableRow(
                          title: "Recovered",
                          value: widget.detailsData["totalRecovered"].toString()),
                      ReusableRow(
                          title: "Deaths",
                          value: widget.detailsData["totalDeaths"].toString()),
                      ReusableRow(
                          title: "Critical",
                          value: widget.detailsData["critical"].toString()),
                      ReusableRow(
                          title: "TodayRecovered",
                          value: widget.detailsData["todayRecovered"].toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.detailsData["image"]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
