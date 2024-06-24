import 'package:flutter/material.dart';
import 'package:quotes/Help.dart';
import 'package:quotes/ChangeCredentials.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color text1Color = Color(0xFF84908F);
  Color text2Color = Color(0xFF84908F);
  String textState1 = 'OFF';
  String textState2 = 'OFF';
  Color iconHomeColor = Color(0xFF58E2AF);
  Color iconHelpColor = Color(0xFF727B7A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F0F2),
      body: Stack(
        children: [
          Positioned(
            top: 35,
            left: 15,
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 360,
            child: GestureDetector(
              onTap : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => changeCredentials()),
                );
              },
              child: Icon(
                Icons.security_outlined,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
          Positioned(
            top: 130,
            right: 20,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF58E2AF), Color(0xFFDFDFDF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(22.0),
              ),
              height: 150,
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Text(
                      'My Location',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 51,
                    left: 20,
                    child: Text(
                      'Alger',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 115,
                    left: 20,
                    child: Text(
                      'Partly cloudy',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 270,
                    child: Text(
                      '10°',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 35,
            child: Text(
              'All scenes',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            top: 350,
            right: 35,
            left: 35,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1Color = (container1Color == Colors.white) ? Color(0xFF58E3B0) : Colors.white;
                      text1Color = (text1Color == Color(0xFF84908F)) ? Colors.white : Color(0xFF84908F);
                      textState1 = (textState1 == 'OFF') ? 'ON' : 'OFF';
                    });
                  },
                  child: Container(
                    height: 165,
                    width: 155,
                    decoration: BoxDecoration(
                      color: container1Color,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 12,
                          left: 12,
                          child: Text(
                            'Garage door',
                            style: TextStyle(
                              color: text1Color,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 38,
                          left: 15,
                          child: Text(
                            '1 device',
                            style: TextStyle(
                              color: text1Color,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 125,
                          left: 20,
                          child: Opacity(
                            opacity: 1.0,
                            child: Text(
                              textState1,
                              style: TextStyle(
                                color: text1Color,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 25.0),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container2Color = (container2Color == Colors.white) ? Color(0xFF58E3B0) : Colors.white;
                      text2Color = (text2Color == Color(0xFF84908F)) ? Colors.white : Color(0xFF84908F);
                      textState2 = (textState2 == 'OFF') ? 'ON' : 'OFF';
                    });
                  },
                  child: Container(
                    height: 165,
                    width: 155,
                    decoration: BoxDecoration(
                      color: container2Color,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 12,
                          left: 12,
                          child: Text(
                            'Garage lights',
                            style: TextStyle(
                              color: text2Color,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 38,
                          left: 15,
                          child: Text(
                            '2 devices',
                            style: TextStyle(
                              color: text2Color,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 125,
                          left: 20,
                          child: Opacity(
                            opacity: 1.0,
                            child: Text(
                              textState2,
                              style: TextStyle(
                                color: text2Color,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    left: 21,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          iconHomeColor = Color(0xFF58E3B0);
                          iconHelpColor = Color(0xFF727B7A);
                        });
                      },
                      child: Icon(
                        Icons.home_filled,
                        color: iconHomeColor,
                        size: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 23,
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: iconHomeColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 21,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Help()),
                        );
                        setState(() {
                          iconHelpColor = Color(0xFF58E3B0);
                          iconHomeColor = Color(0xFF727B7A);
                        });
                      },
                      child: Icon(
                        Icons.help_outline_outlined,
                        color: iconHelpColor,
                        size: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    right: 25,
                    child: Text(
                      'Help',
                      style: TextStyle(
                        color: iconHelpColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

