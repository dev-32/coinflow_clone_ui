import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentTile extends StatelessWidget {
  const PercentTile({super.key, required this.imagePath, required this.mainText, required this.subText, required this.percent, required this.price});
  final String imagePath;
  final String mainText;
  final String subText;
  final double percent;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 9,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        imagePath,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mainText,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            subText,
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CircularPercentIndicator(
                  radius: 80,
                  percent: percent,
                  progressColor: Colors.deepPurpleAccent.shade100,
                  backgroundColor: Colors.white,
                  lineWidth: 17,
                  circularStrokeCap: CircularStrokeCap.round,
                  center:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( (percent*100).toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                          Text('%'),
                        ],
                      ),
                      Text('Good price')
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                        '\$'+price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '= 1' +subText,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
