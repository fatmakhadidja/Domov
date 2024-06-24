import 'package:flutter/material.dart';
import 'package:quotes/Home.dart';


void main() {
  runApp(MaterialApp(
    home: Intro(),
  ));
}


class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCE2ED),
      body : Stack(
        children: [
          Positioned(
            top:0,
              child: Image.asset('assets/Welcome.png'),
          ),
          Positioned(
            bottom: 175,
              left: 25,
              child: Text(
                     'Domov.',
                      style : TextStyle(
                      color: Colors.black,
                      fontSize :60,
                      fontWeight: FontWeight.bold,

              ),
              ),
          ),
          Positioned(
            bottom: 150,
              left:30,
              child: Text(
                'Scientific touch for your smart house.',
                style : TextStyle(
                  color: Colors.black,
                  fontSize :20,
                ),
              ),
          ),
          Positioned(
            bottom: 75,
              right:20,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> Home())
                    );
                  },
                  child: Container(
                    height: 37,
                    width: 113,
                  decoration: BoxDecoration(
                    color: Color(0xFF727B7A).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset("assets/Arrow 1.png"),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
