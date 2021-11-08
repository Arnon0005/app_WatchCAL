import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcal/foodandrun/food.dart';
import 'package:watchcal/foodandrun/run.dart';


class HomeOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "วันนี้",
                  style: GoogleFonts.prompt(color: Colors.black, fontSize: 25),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.tealAccent, Colors.cyanAccent]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(80),
                    )),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Text(
                    "'' มาเริ่ม\n ดูแลสุขภาพกันเถอะ ''",
                    style: GoogleFonts.prompt(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodCal(),
                    ),
                  );
                },
                child: Container(
                  width: 335,
                  margin: const EdgeInsets.only(top: 30),
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/images/food2.jpg"),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(3, 3),
                          color: Colors.grey,
                        )
                      ]),
                  child: Text(
                    "  อาหาร",
                    style: GoogleFonts.prompt(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: InkWell(
                onTap: () async {
           
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BurningCal(),
                    ),
                  );
                },
                child: Container(
                  width: 335,
                  margin: const EdgeInsets.only(top: 30),
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/images/Run2.jpg"),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(3, 3),
                          color: Colors.grey,
                        )
                      ]),
                  child: Text(
                    "  การเผาผลาญ",
                    style: GoogleFonts.prompt(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
