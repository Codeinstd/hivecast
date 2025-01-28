import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivecast/classes/style.dart';

class MyStats extends StatefulWidget {
  const MyStats({super.key});

  @override
  State<MyStats> createState() => _MyStatsState();
}

class _MyStatsState extends State<MyStats> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.white,

      // appbar //
      appBar: AppBar(
        backgroundColor: style.white,
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // icon //
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            // text //
            Text(
              'Stats',
              style: GoogleFonts.outfit(
                color: style.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
        toolbarHeight: 30,
      ),

      // body//
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            top: 16,
            right: 24,
          ),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // interest card //
                  Container(
                    width: 350,
                    height: 105,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      color: style.white,
                      boxShadow: const [
                        BoxShadow(
                          color: style.gray03,
                          spreadRadius: 5,
                          offset: Offset.zero,
                          blurRadius: 4,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          // text //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Interest',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.outfit(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.15,
                                  color: style.black,
                                ),
                              ),
                              // icon //
                              const Icon(
                                Icons.add_box_sharp,
                                size: 18,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          // chip-text //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // row 1 //
                              Container(
                                width: 70,
                                height: 24,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: style.gray,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child:
                                    // 01 //
                                    Row(
                                  children: [
                                    // icon //
                                    Icon(
                                      Icons.close,
                                      size: 13,
                                      color: style.gray05,
                                    ),
                                    Text(
                                      'Design',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.15,
                                        color: style.gray05,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // row 2 //
                              Container(
                                width: 60,
                                height: 24,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: style.gray,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child:
                                    // 01 //
                                    Row(
                                  children: [
                                    // icon //
                                    Icon(
                                      Icons.close,
                                      size: 13,
                                      color: style.gray05,
                                    ),
                                    Text(
                                      'Tech',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.15,
                                        color: style.gray05,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // row 1 //
                              Container(
                                width: 90,
                                height: 24,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: style.gray,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child:
                                    // 01 //
                                    Row(
                                  children: [
                                    // icon //
                                    Icon(
                                      Icons.close,
                                      size: 13,
                                      color: style.gray05,
                                    ),
                                    Text(
                                      'Investment',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.15,
                                        color: style.gray05,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // row 2 //
                              Container(
                                width: 60,
                                height: 24,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: style.gray,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child:
                                    // 01 //
                                    Row(
                                  children: [
                                    // icon //
                                    Icon(
                                      Icons.close,
                                      size: 13,
                                      color: style.gray05,
                                    ),
                                    Text(
                                      'Food',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.15,
                                        color: style.gray05,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  // interest card //
                  Container(
                    width: 350,
                    height: 105,
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      color: style.white,
                      boxShadow: [
                        BoxShadow(
                          color: style.gray03,
                          spreadRadius: 5,
                          offset: Offset.zero,
                          blurRadius: 4,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          // text //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Videos Watched',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.outfit(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.15,
                                  color: style.black,
                                ),
                              ),
                              // icon //
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          LineChart(LineChartData(
                              borderData: FlBorderData(
                                show: true,
                                border:
                                    Border.all(color: style.white, width: 2),
                              ),
                              gridData: FlGridData(
                                show: true,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                      color: style.white, strokeWidth: 1);
                                },
                                drawVerticalLine: true,
                                getDrawingVerticalLine: (value) {
                                  return FlLine(
                                      color: style.white, strokeWidth: 1);
                                },
                              ),
                              titlesData: FlTitlesData(
                                show: true,
                                bottomTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 35,
                                    getTextStyles: (context, value) {
                                      return const TextStyle(
                                          color: Color(0xff68737d),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold);
                                    },
                                    getTitles: (value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return 'Sep 19';
                                        case 4:
                                          return 'Oct 10';
                                        case 8:
                                          return 'Nov 16';
                                      }
                                      return '';
                                    },
                                    margin: 8),
                                rightTitles: SideTitles(),
                                topTitles: SideTitles(),
                                leftTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 35,
                                  getTextStyles: (context, value) {
                                    return const TextStyle(
                                        color: Color(0xff68737d),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold);
                                  },
                                  getTitles: (value) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return '0';
                                      case 2:
                                        return '50';
                                      case 4:
                                        return '100';
                                      case 6:
                                        return '150';
                                    }
                                    return '';
                                  },
                                  margin: 12,
                                ),
                              ),
                              maxX: 8,
                              maxY: 8,
                              minY: 0,
                              minX: 0,
                              lineBarsData: [
                                LineChartBarData(
                                    spots: [
                                      const FlSpot(0, 0),
                                      const FlSpot(5, 5),
                                      const FlSpot(7, 6),
                                      const FlSpot(8, 4)
                                    ],
                                    isCurved: true,
                                    color: style.black,
                                    barWidth: 5,
                                    belowBarData: BarAreaData(
                                        show: true,
                                        color: gradientColors.toList()))
                              ])),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        )),
      ]),
    );
  }
}
