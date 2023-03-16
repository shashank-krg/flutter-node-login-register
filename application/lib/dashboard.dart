import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:application/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100.0),
                  bottomLeft: Radius.circular(100.0)),
              color: Color.fromARGB(255, 242, 108, 18),
            ),
            child: Stack(
              children: [
                Center(
                    child: Text("About Us",
                        style: GoogleFonts.pacifico(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ))),
              ],
            )),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 2.5,
              left: 25,
              right: 25),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Text(
                  "SEARCHINGYARD SOFTWARE PVT LTD is an Indian Multinational Information Technology (IT) services and consulting company with its headquarter in Bhubaneswar. It operates in 19 locations across 9 countriesWe are delivering everything with quality, from offering technical support to constructing massive technological and cyber infrastructure. Technologically, our work has opened up new frontiers. IoT based infrastructure, cloud computing and solutions, along with forays into the worlds of eGov, Web 3.0, AR and VR & AI and ML, have all been areas in which we have explored.",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 320, 16, 0),
                child: Container(
                  height: 50,
                  width: 400,
                  child: FlatButton(
                      color: const Color.fromARGB(255, 242, 108, 18),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signin()));
                      },
                      child: const Text(
                        "Logout",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ]),
          ),
        )
      ],
    ));
  }
}
