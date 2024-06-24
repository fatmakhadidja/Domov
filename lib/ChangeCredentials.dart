import 'package:flutter/material.dart';
import 'package:quotes/Home.dart';
import 'package:quotes/Help.dart';

class changeCredentials extends StatefulWidget {
  const changeCredentials({super.key});

  @override
  State<changeCredentials> createState() => _changeCredentialsState();
}

class _changeCredentialsState extends State<changeCredentials> {
  late TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F0F2),
      body : Stack(
        children: [
          Positioned(
            top: 200,
            left: 130,
            child: Image.asset('assets/DomovLogo.png'),
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
                        color:Color(0xFF727B7A),
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
                        color: Color(0xFF727B7A),
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

                      },
                      child: Icon(
                        Icons.help_outline_outlined,
                        color: Color(0xFF727B7A),
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
                        color: Color(0xFF727B7A),
                        fontSize: 12,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          Positioned(
            top : 400,
            left:20,right: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(-1,1),
                    blurRadius: 8,
                  ),
                ],
              ),
              height: 60,
              width: 300,

              child: Stack(
                children: [
                  Positioned(
                    top:16,
                    left:50,
                    bottom: 20,
                    child: Text(
                      'Change the network\'s credentials',
                      style : TextStyle(
                        color: Color(0xFF84908F),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Positioned(
                    top:15,
                    left:15,
                    bottom: 20,
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Icon(
                        Icons.link,
                        color: Color(0xFF84908F),
                        size:30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top : 500,
            left: 140,
            child: ElevatedButton(
              onPressed: (){},
              child: Text(
                'Apply changes',
                style: TextStyle(
                  color : Colors.white,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom (
                backgroundColor: Color(0xFF32E0A0),
                shadowColor: Colors.black.withOpacity(0.5),
                elevation: 5,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
