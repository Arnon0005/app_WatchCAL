import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcal/model/profile.dart';
import 'package:watchcal/register.dart';

import 'home/homeone.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              backgroundColor: Color(0xFFF5F5F5),
              body: Center(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.1, 0.7],
                            colors: [
                              Color(0xff30ffce),
                              Color(0xff18ffff),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                              child: Image.asset(
                                'assets/images/logo_1.png',
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Container(
                                width: 300,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 15,
                                      color: Color(0xFFDEDEDE),
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: Container(
                                        width: 230,
                                        height: 65,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: TextFormField(
                                            validator: MultiValidator([
                                              RequiredValidator(
                                                  errorText:
                                                      "Plaease Input Email"),
                                              EmailValidator(
                                                  errorText: "Check for Email")
                                            ]),
                                            obscureText: false,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            onSaved: (String? emil) {
                                              profile.email = emil!;
                                            },
                                            decoration: InputDecoration(
                                              labelText: 'Username',
                                              hintText: 'Email',
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 15, 0, 0),
                                      child: Container(
                                        width: 230,
                                        height: 65,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: TextFormField(
                                            validator: RequiredValidator(
                                                errorText:
                                                    "Please Input Password"),
                                            obscureText: true,
                                            onSaved: (String? password) {
                                              profile.password = password!;
                                            },
                                            decoration: InputDecoration(
                                              labelText: 'Password',
                                              suffixIcon: InkWell(
                                                child: Icon(
                                                  Icons.visibility,
                                                ),
                                              ),
                                              hintText: '************',
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      child: MaterialButton(
                                        onPressed: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            formKey.currentState!.save();
                                          }
                                          try {
                                            await FirebaseAuth.instance
                                                .signInWithEmailAndPassword(
                                                    email: profile.email,
                                                    password: profile.password)
                                                .then((value) {
                                              formKey.currentState!.reset();
                                              Navigator.pushReplacement(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return HomeOne();
                                              }));
                                            });
                                          } on FirebaseAuthException catch (e) {
                                            Fluttertoast.showToast(
                                                msg: e.message!,
                                                gravity: ToastGravity.CENTER);
                                          }
                                        },
                                        minWidth: 150,
                                        height: 50,
                                        color: Colors.tealAccent,
                                        textColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          "Login",
                                          style: GoogleFonts.prompt(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'หากยังไม่มีรหัสสำหรับเข้าใช้งาน',
                                            style: GoogleFonts.prompt(
                                                color: Colors.grey[400],
                                                fontSize: 11),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          RegisterScreen()));
                                            },
                                            child: Text(
                                              "  สมัครสมาชิก",
                                              style: GoogleFonts.prompt(
                                                  color: Colors.tealAccent,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
