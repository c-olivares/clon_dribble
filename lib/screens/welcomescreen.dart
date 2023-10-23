import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffb757ff),
      child: Stack(children: [

        // white Container
        Positioned(
            child: Container(
          height: 650,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
              ),
              // botones de tres puntos y skip
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 80, right: 25),
                    child: Row(
                      children: [
                        // botón de tres puntos
                        Container(
                          color: Colors.black87,
                          height: 3,
                          width: 20,
                        ),
                        const SizedBox(width: 3,),
                        Container(
                          color: Colors.black87,
                          height: 3,
                          width: 5,
                        ),
                         const SizedBox(width: 3,),
                        Container(
                          color: Colors.black87,
                          height: 3,
                          width: 5,
                        ),
                        Expanded(child: Container()),
                        // botón skip
                        const Text('skip', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),)
                ],
                ),
                  ),
                const SizedBox(height: 25,),

                  // text widget

                 Text('Learn English Whit',
                style: GoogleFonts.poppins(
                  color: Colors.black87,
                  fontSize: 12,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                ),
                ),

                 Text('London School',
                style: GoogleFonts.poppins(
                  color: Colors.black87,
                  fontSize: 30,
                  letterSpacing: -1,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(height: 10,),
                 Text('Easy and fast grammar lessons for \n better memorization',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black87,
                  fontSize: 12,
                  letterSpacing: 1,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                ),
                ),
                // Imagen
                const SizedBox(height: 40,),
                const Image(image: AssetImage("assets/images/london_school_welcome.jpg")),
                ],
              ),

        ),
        ),

        // Black Container
        Positioned(
            bottom: 75,
            right: 0,
            child: Container(
              height: 120,
              width: 270,
              decoration: const BoxDecoration(
                  color: Color(0xff18171f),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // get started
                      Text('Get started', 
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 10,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                      ),
                      ),
                      const SizedBox(height: 14,),
                      // welcome to
                        Text('Welcome to', 
                        style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                      ),
                      ),
                      const SizedBox(height: 2,),
                      // London School
                        Text('London School', 
                        style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
              
                    ],
                ),
              ),
            )),

        // Next buttom
        Positioned(
            bottom: 50,
            right: 20,
            height: 50,
            width: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    )),
                child: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            )),
      ]),
    );
  }
}
