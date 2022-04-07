// import 'package:exercise/dimentions.dart';
import 'package:exercise/pages/Tadasan.dart';
import 'package:exercise/pages/exercise.dart';
import 'package:exercise/pages/padmasan.dart';
import 'package:exercise/pages/vrikshasana.dart';
import 'package:exercise/slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dimentions.dart';
import 'homeYOGA.dart';
import 'slider.dart';
import 'exerciseInformation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Recipe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 255, 255, 255),
      ),
      // home: Exercise(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => DetailsScreen(), //Exercise3();
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/Exercise1': (context) => Exercise1(),
        '/padmasan': (context) => padmasan(),
        '/Exercise3': (context) => Exercise(),
        '/Exercise4': (context) => Exercise4(),
        '/ExerciseInfo': (context) => exerciseInfo(),
        '/ExerciseInformation': (context) => ExerciseInformation(),
        '/tadasan': (context) => tadasan(),
        '/Vrikshasana': (context) => Vrikshasana(),
        // '/Home': (context) => BasicDemo(),
      },
    );
  }
}

//exercise
class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 186, 241),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            SizedBox(
              height: 30,
            ),
            // FadeInUp(
            //  duration: Duration(milliseconds: 1500),
            // child:
            Image.network(
                "https://user-images.githubusercontent.com/80798531/161093347-65fdc518-6665-4d1f-a6ae-d94962320d9d.gif"),

            //),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Text(
                    "Exercises Daily - boosts energy",
                    style: GoogleFonts.robotoSlab(
                        fontSize: 36, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Are You Ready To Exercise...",
                    style: GoogleFonts.robotoSlab(
                        fontSize: 26,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Exercise1');
                        },
                        color: Color.fromARGB(255, 255, 255, 255),
                        height: 45,
                        padding: EdgeInsets.only(right: 20, left: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.robotoSlab(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Exercise1');
                          },
                          child: Text(
                            'Next',
                            style: GoogleFonts.robotoSlab(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ], //gif image
        ),
      ),
    );
  }
}

//Exercise1

class Exercise1 extends StatefulWidget {
  const Exercise1({Key? key}) : super(key: key);

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            SizedBox(
              height: 30,
            ),
            // FadeInUp(
            //  duration: Duration(milliseconds: 1500),
            // child:
            Image.network(
                "https://cdn.dribbble.com/users/13819/screenshots/14208978/media/56820e80faf6378f82a71be9cde68142.gif"),
            //),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Text(
                    "Exercise Daily boosts energy",
                    style: GoogleFonts.robotoSlab(
                        fontSize: 36, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Are You Ready To Exercise...",
                    style: GoogleFonts.robotoSlab(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/Exercise2');
                        },
                        color: Color.fromARGB(255, 255, 255, 255),
                        height: 45,
                        padding: EdgeInsets.only(right: 20, left: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.robotoSlab(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/Exercise2');
                          },
                          child: Text(
                            'SKIP',
                            style: GoogleFonts.robotoSlab(
                                fontSize: 14, color: Colors.white),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ], //gif image
        ),
      ),
    );
  }
}

//execise2

//exercise3

class Exercise3 extends StatefulWidget {
  const Exercise3({Key? key}) : super(key: key);

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              SizedBox(
                height: 30,
              ),
              // FadeInUp(
              //  duration: Duration(milliseconds: 1500),
              // child:
              Image.network("https://i.gifer.com/7kvp.gif"),
              SizedBox(
                height: 20,
              ),

              //)1,
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  children: [
                    Text(
                      "Exercises Daily - boosts energy",
                      style: GoogleFonts.robotoSlab(
                          fontSize: 36, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Are You Ready To Exercise...",
                      style: GoogleFonts.robotoSlab(
                          fontSize: 26,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/ExerciseInfo');
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          height: 45,
                          padding: EdgeInsets.only(right: 20, left: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.robotoSlab(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Home');
                            },
                            child: Text(
                              'Next',
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Image.network("https://i.gifer.com/7GpN.gif"),
                    // SizedBox(
                    //   height: 40,
                    // ),
                  ],
                ),
              ),
            ], //gif image
          ),
        ),
      ),
    );
  }
}

//exercise4

class Exercise4 extends StatefulWidget {
  const Exercise4({Key? key}) : super(key: key);

  @override
  State<Exercise4> createState() => _Exercise4State();
}

class _Exercise4State extends State<Exercise4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  children: [
                    Text(
                      "Exercises Daily - boosts energy",
                      style: GoogleFonts.robotoSlab(
                          fontSize: 36, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Are You Ready To Exercise...",
                      style: GoogleFonts.robotoSlab(
                          fontSize: 26,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Exercise3');
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          height: 45,
                          padding: EdgeInsets.only(right: 20, left: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.robotoSlab(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Home');
                            },
                            child: Text(
                              'NEXT',
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 2, 2, 2)),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              // FadeInUp(
              //  duration: Duration(milliseconds: 1500),
              // child:
              Image.network("https://i.gifer.com/KmKW.gif"),
              SizedBox(
                height: 20,
              ),
              Image.network("https://i.gifer.com/3IDz.gif"),
              SizedBox(
                height: 20,
              ),
              Image.network("https://i.gifer.com/3xhG.gif"),
              // SizedBox(
              //   height: 20,
              // ),

              //),
            ], //gif image
          ),
        ),
      ),
    );
  }
}
