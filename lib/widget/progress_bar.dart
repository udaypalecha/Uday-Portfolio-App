import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressBar extends StatelessWidget {

  final String progresstitle;
  final double progresss;

  const ProgressBar({super.key ,
  required this.progresstitle,
  required this.progresss
  });

  @override
  Widget build(BuildContext context) {
    Size size   = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Text(progresstitle,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Lexend"
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          LinearPercentIndicator(
            lineHeight: size.height * 0.02,
            width: size.width * 0.8,
            alignment: MainAxisAlignment.center,
            barRadius:const Radius.circular(30),
            progressColor: Colors.grey.shade500,
            percent: progresss,
          ),
        ],
      ),
    );
  }
}
