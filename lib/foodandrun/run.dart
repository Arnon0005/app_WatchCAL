import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcal/food_run/%E0%B8%A7%E0%B8%B7%E0%B9%88%E0%B8%87%E0%B8%88%E0%B9%8A%E0%B8%AD%E0%B8%81%E0%B8%81%E0%B8%B5%E0%B9%89%E0%B8%87.dart';
import 'package:watchcal/food_run/%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%A2%E0%B8%99%E0%B9%89%E0%B8%B3.dart';
import 'package:watchcal/food_run/%E0%B9%81%E0%B8%9A%E0%B8%95%E0%B8%A1%E0%B8%B4%E0%B8%99%E0%B8%95%E0%B8%B1%E0%B8%99..dart';



class BurningCal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("รายกายการเผาผลาญ",style: GoogleFonts.prompt(fontSize: 18,color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.navigate_before),
          color: Colors.tealAccent,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SpotScreen(),
                  ),
                );
              },
              child: Center(
                child: Container(
                  width: 320,
                  height: 90,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.tealAccent, Colors.cyanAccent]),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(60),
                      )),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text(
                        "'' แบตมินตัน ''",
                        style: GoogleFonts.prompt(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sport2Screen(),
                  ),
                );
              },
              child: Center(
                child: Container(
                  width: 320,
                  height: 90,
                  decoration: BoxDecoration(
                    
                      gradient: LinearGradient(
                          colors: [Colors.tealAccent, Colors.cyanAccent]),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(60),
                      )),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text(
                        "'' ว่ายน้ำ ''",
                        style: GoogleFonts.prompt(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sport3Screen(),
                  ),
                );
              },
              child: Center(
                child: Container(
                  width: 320,
                  height: 90,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.tealAccent, Colors.cyanAccent]),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(60),
                      )),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text(
                        "'' วิ่งจ๊อกกิ้ง ''",
                        style: GoogleFonts.prompt(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
