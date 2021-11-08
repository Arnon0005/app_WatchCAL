import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcal/foodandrun/run.dart';
// import 'package:thecoffee/screen/coffee.dart';

class Sport2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(40),
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return BurningCal();
                        }));
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.tealAccent)),
                  Spacer(),
                ],
              ),
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/ว่ายน้ำ.jpg')),
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: EdgeInsets.all(40),
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'ว่ายน้ำ',
                      style: GoogleFonts.prompt(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                      child: Center(
                        child: Text(
                          "240 cal / แก้ว ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.prompt(fontSize: 35, color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
