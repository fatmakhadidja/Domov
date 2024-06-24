import 'package:flutter/material.dart';
import 'package:quotes/Home.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatefulWidget {
  const Help({super.key});
  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {

  Color iconHelpColor = Color(0xFF58E2AF);
  Color iconHomeColor = Color(0xFF727B7A);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F0F2),
      body: Stack(
        children: [

          Positioned(
            top: 35,
            left: 30,
            child: Text(
              'Help',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
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
          Positioned(
            top: 400,
            left: 20,
            right: 20,

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(-1, 1),
                      blurRadius: 8,
                    ),
                  ],
                ),
                height: 60,
                width: 300,
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      left: 50,
                      bottom: 20,
                      child: Text(
                        'Visit our website',
                        style: TextStyle(
                          color: Color(0xFF84908F),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 15,
                      bottom: 20,
                      child: Icon(
                        Icons.link,
                        color: Color(0xFF84908F),
                        size: 30,
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
