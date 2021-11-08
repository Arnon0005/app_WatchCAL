import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcal/login.dart';
import 'package:watchcal/model/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
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
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                centerTitle: true,
                leading: IconButton(
                  icon: Icon(Icons.navigate_before),
                  color: Colors.tealAccent,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              backgroundColor: Colors.white,
              body: Container(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
                          child: Text(
                            'Create account',
                            style: GoogleFonts.prompt(
                                color: Colors.tealAccent, fontSize: 25),
                          ),
                        ),
                      ),
                      Text('มาเริ่มสร้างบัญชีของคุณกัน !',
                          style: GoogleFonts.prompt(fontSize: 15)),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                        child: Container(
                          width: 250,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: TextFormField(
                              validator: MultiValidator([
                                RequiredValidator(errorText: "กรุณากรอก email"),
                                EmailValidator(
                                    errorText: "รูปแบบ email ไม่ถูกต้อง")
                              ]),
                              obscureText: false,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? emil) {
                                profile.email = emil!;
                              },
                              decoration: InputDecoration(
                                labelText: 'Username',
                                hintText: 'Email',
                                enabledBorder: UnderlineInputBorder(
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: 250,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: TextFormField(
                              validator: RequiredValidator(
                                  errorText: "กรุณากรอก password"),
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
                                  hintText: '***************',
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ))),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: MaterialButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              try {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: profile.email,
                                        password: profile.password);
                                formKey.currentState!.reset();
                                Fluttertoast.showToast(
                                    msg: "Finish Register",
                                    gravity: ToastGravity.CENTER);
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginScreen();
                                }));
                              } on FirebaseAuthException catch (e) {
                                //print(e.message);
                                //print(e.code);
                                Fluttertoast.showToast(
                                    msg: e.message!,
                                    gravity: ToastGravity.CENTER);
                              }
                            }
                          },
                          minWidth: 200,
                          height: 50,
                          color: Colors.tealAccent,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "สมัครสมาชิก",
                            style: GoogleFonts.prompt(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
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
