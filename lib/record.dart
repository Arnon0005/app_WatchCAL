import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcal/login.dart';

class RecodPage extends StatefulWidget {
  @override
  _RecodPageSate createState() => _RecodPageSate();
}

class _RecodPageSate extends State<RecodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  0.7
                ],
                colors: [
                  Color(0xff30ffce),
                  Color(0xff18ffff),
                ]),
          ),
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image(
                    image: AssetImage(
                      'assets/images/logo_1.png',
                    ),
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Text(
                      "''กินมากพุงย้อย\n กินน้อยพุงก็ยังอยู่''",
                      style:
                          GoogleFonts.prompt(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Text(
                      "มาร่วมกัน ควบคุมอาหาร\nและ หุ่นที่คุณต้องการ",
                      style:
                          GoogleFonts.prompt(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)),
                        child: Text(
                          'เริ่มต้นใช้งาน',
                          style: GoogleFonts.prompt(
                              fontSize: 19, color: Colors.tealAccent),
                        ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                      ),
                    ),
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
