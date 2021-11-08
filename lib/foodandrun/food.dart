import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcal/food_run/%E0%B8%9C%E0%B8%B1%E0%B8%94%E0%B8%9C%E0%B8%B1%E0%B8%81%E0%B8%9A%E0%B8%B8%E0%B9%89%E0%B8%87%E0%B9%84%E0%B8%9F%E0%B9%81%E0%B8%94%E0%B8%87.dart';
import 'package:watchcal/food_run/%E0%B8%9C%E0%B8%B1%E0%B8%94%E0%B8%9E%E0%B8%A3%E0%B8%B4%E0%B8%81%E0%B9%81%E0%B8%81%E0%B8%87%E0%B8%AB%E0%B8%A1%E0%B8%B9%E0%B8%AB%E0%B8%99%E0%B9%88%E0%B8%AD%E0%B9%84%E0%B8%A1%E0%B9%89.dart';
import 'package:watchcal/food_run/%E0%B8%A2%E0%B8%B3%E0%B8%9B%E0%B8%A5%E0%B8%B2%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%9B%E0%B9%8B%E0%B8%AD%E0%B8%87.dart';



class FoodCal extends StatefulWidget {
  @override
  _FoodCalState createState() => _FoodCalState();
}

class _FoodCalState extends State<FoodCal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("รายการอาหาร",
            style: GoogleFonts.prompt(fontSize: 18, color: Colors.black)),
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
                    builder: (context) => Food2Screen(),
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
                        "'' ผัดพริกแกงหมูหน่อไม้ ''",
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
                    builder: (context) => Food3Screen(),
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
                        "'' ยำปลากระป๋อง ''",
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
                    builder: (context) => Food1Screen(),
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
                        "'' ผัดผักบุ้งไฟแดง ''",
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
