import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static String id = 'main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentSelectionForChildren = 0;
  int _currentSelectionForCalendar = 0;

  final Map<int, Widget> _children = {
    0: const Text('STATISTICS'),
    1: const Text('JOURNEY'),
  };

  final Map<int, Widget> _calendar = {
    0: const Text('WEEK'),
    1: const Text('MONTH'),
    2: const Text('YEAR'),
  };

  String week = 'May 23 - May 29';
  String month = 'May 1 - May 31';
  String year = '2022';
  String displayedText = 'May 23 - May 29';
  String displayTotal = '45';

  String overviewTotal = '93';
  String overviewSevenFastAvg = '15,1 h';

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Exit App'),
          content: const Text('Do you want to exit?'),
          actions:[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('No'),
            ),

            ElevatedButton(
              onPressed: () => exit(0),
              child: const Text('Yes'),
            ),

          ],
        ),
      )??false;
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      'MAIN',
                      style: TextStyle(
                        color: HexColor('#323F4B'),
                        fontFamily: 'Mulish',
                        fontSize: 23.0,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.topRight,
                      height: 23.0,
                      child: Image.asset(
                        'assets/images/icons/settings_icon.png',
                        width: 23.0,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 10.0,
                ),
                Divider(
                  color: HexColor('#7B8794'),
                  thickness: 0.30,
                ),

                const SizedBox(
                  height: 18.0,
                ),

                MaterialSegmentedControl(
                  children: _children,
                  selectionIndex: _currentSelectionForChildren,
                  borderColor: HexColor('#323F4B'),
                  selectedColor: HexColor('#2F80ED'),
                  unselectedColor: Colors.white,
                  selectedTextStyle: const TextStyle(color: Colors.white),
                  unselectedTextStyle: TextStyle(color: HexColor('#323F4B')),
                  borderWidth: 0.7,
                  borderRadius: 8.0,
                  onSegmentTapped: (index) {
                    setState(() {
                      _currentSelectionForChildren = index;
                      if (index == 0) {
                        overviewTotal = '93';
                        overviewSevenFastAvg = '15,1 hr';
                      } else {
                        overviewTotal = '1500';
                        overviewSevenFastAvg = '10,3 hr';
                      }
                    });
                    },
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 22.0,
                          color: HexColor('#323F4B')
                        ),
                      ),

                      const SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TOTAL',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12.0,
                                    color: HexColor('#7B8794'),
                                  ),
                                ),
                                Text(
                                  overviewTotal,
                                  style: const TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'MAX STREAK',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12.0,
                                    color: HexColor('#7B8794'),
                                  ),
                                ),
                                const Text(
                                  '27',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '7-FAST AVG.',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12.0,
                                    color: HexColor('#7B8794'),
                                  ),
                                ),
                                Text(
                                  overviewSevenFastAvg,
                                  style: const TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                Text(
                                  'STREAK NOW',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12.0,
                                    color: HexColor('#7B8794'),
                                  ),
                                ),
                                const Text(
                                  '4',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LONGEST',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12.0,
                                    color: HexColor('#7B8794'),
                                  ),
                                ),
                                const Text(
                                  '21 h',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 59.5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent fasts',
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 22.0,
                                color: HexColor('#323F4B')
                            ),
                          ),

                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'See more',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 13.0,
                                color: HexColor('#2F80ED'),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MaterialSegmentedControl(
                            children: _calendar,
                            selectionIndex: _currentSelectionForCalendar,
                            borderColor: HexColor('#323F4B'),
                            selectedColor: HexColor('#2F80ED'),
                            unselectedColor: Colors.white,
                            selectedTextStyle: const TextStyle(color: Colors.white),
                            unselectedTextStyle: TextStyle(color: HexColor('#323F4B')),
                            borderWidth: 0.7,
                            borderRadius: 8.0,
                            horizontalPadding: const EdgeInsets.all(0.0),
                            onSegmentTapped: (index) {
                              setState(() {
                                _currentSelectionForCalendar = index;
                                if (index == 0) {
                                  displayedText = week;
                                  displayTotal = '45';
                                } else if (index == 1) {
                                  displayedText = month;
                                  displayTotal = '170';
                                } else {
                                  displayedText = year;
                                  displayTotal = '2000';
                                }
                              });
                            },
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TOTAL',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12.0,
                                    color: HexColor('#7B8794'),
                                  ),
                                ),
                                Text(
                                  displayTotal,
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontSize: 20.0,
                                      color: HexColor('#323F4B')
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 18.0,
                                ),
                                Text(
                                  displayedText,
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12.0,
                                    color: HexColor('#7B8794'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 140.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            VerticalDivider(
                              color: HexColor('#7B8794'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('#2F80ED'),
                                border: Border.all(width: 1, color: HexColor('#2F80ED')),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              height: 75.8,
                              width: 10.0,
                            ),
                            VerticalDivider(
                              color: HexColor('#7B8794'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('#2F80ED'),
                                border: Border.all(width: 1, color: HexColor('#2F80ED')),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              height: 37.12,
                              width: 10.0,
                            ),
                            VerticalDivider(
                              color: HexColor('#7B8794'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('#2F80ED'),
                                border: Border.all(width: 1, color: HexColor('#2F80ED')),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              height: 120.64,
                              width: 10.0,
                            ),
                            VerticalDivider(
                              color: HexColor('#7B8794'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('#2F80ED'),
                                border: Border.all(width: 1, color: HexColor('#2F80ED')),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              height: 80.04,
                              width: 10.0,
                            ),
                            VerticalDivider(
                              color: HexColor('#7B8794'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('#2F80ED'),
                                border: Border.all(width: 1, color: HexColor('#2F80ED')),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              height: 110,
                              width: 10.0,
                            ),
                            VerticalDivider(
                              color: HexColor('#7B8794'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('#2F80ED'),
                                border: Border.all(width: 1, color: HexColor('#2F80ED')),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              width: 10.0,
                            ),
                            VerticalDivider(
                              color: HexColor('#7B8794'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('#2F80ED'),
                                border: Border.all(width: 1, color: HexColor('#2F80ED')),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              height: 37.12,
                              width: 10.0,
                            ),
                            VerticalDivider(
                              color: HexColor('#7B8794'),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 20.0,
                      ),
                      Divider(
                        color: HexColor('#7B8794'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

