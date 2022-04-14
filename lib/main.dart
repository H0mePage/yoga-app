// import 'package:exercise/dimentions.dart';
import 'package:exercise/pages/Tadasan.dart';
import 'package:exercise/pages/exercise.dart';
import 'package:exercise/pages/padmasan.dart';
import 'package:exercise/pages/vrikshasana.dart';
import 'package:exercise/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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


// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const title = 'Cached Images';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(title),
//         ),
//         body: Center(
//           child: CachedNetworkImage(
//             placeholder: (context, url) => const CircularProgressIndicator(),
//             imageUrl: 'https://picsum.photos/250?image=9',
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: 'Roboto'),
//       home: HomePage(),
//     ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  var _height; - MediaQuery.of(context).size.height;
    var _width; - MediaQuery.of(context).size.width;

   return Scaffold(
      //SingleChildScrollView(
      //child:
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.menu,
      //       color: Colors.black87,
      //     ),
      //     onPressed: () {},
      //   ),
      //  systemOverlayStyle: SystemUiOverlayStyle.dark,
      //),
      body: Stack(
        // child: SingleChildScrollView(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Info...',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Disease  Symptoms  Treatments',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search you're looking for",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Promo Today',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/diabetes.jpg'),
                          promoCard('assets/TB.gif'),
                          promoCard('assets/diabetes.webp'),
                          promoCard('assets/TB.gif'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/diabetes.jpg')),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: [
                                0.3,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.2)
                              ]),
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Best Design',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        
      //),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
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












//Github Terminal er
/*
gaurav@gaurav:~/flutter/exercise$ echo "# Flutter-Yoga" >> README.md
gaurav@gaurav:~/flutter/exercise$ git init
d README.md
git commit -m "first commit"
git brancReinitialized existing Git repository in /home/gaurav/flutter/exercise/.git/
h -M main
git remote add origin https://github.comgaurav@gaurav:~/flutter/exercise$ git add README.md
/H0mePage/Flutter-Yoga.git
git push -u origin maingaurav@gaurav:~/flutter/exercise$ git commit -m "first commit"
[main 9a730bd] first commit
 1 file changed, 1 insertion(+)
gaurav@gaurav:~/flutter/exercise$ git branch -M main
gaurav@gaurav:~/flutter/exercise$ git remote add origin https://github.com/H0mePage/Flutter-Yoga.git
fatal: remote origin already exists.
gaurav@gaurav:~/flutter/exercise$ git push -u origin main
fatal: remote error: 
  You can't push to git://github.com/samrao2/manager-4.git
  Use https://github.com/samrao2/manager-4.git
gaurav@gaurav:~/flutter/exercise$ git remote add origin https://github.com/H0mePage/Flutter-Yoga.git
fatal: remote origin already exists.
gaurav@gaurav:~/flutter/exercise$ git branch -M main
igin maingaurav@gaurav:~/flutter/exercise$ git push -u origin main
fatal: remote error: 
  You can't push to git://github.com/samrao2/manager-4.git
  Use https://github.com/samrao2/manager-4.git
gaurav@gaurav:~/flutter/exercise$ echo "# yoga-app" >> README.md
gaurav@gaurav:~/flutter/exercise$ git init
ADME.md
git commit -m "first commit"
git branch -MReinitialized existing Git repository in /home/gaurav/flutter/exercise/.git/
gaurav@gaurav:~/flutter/exercise$ git add README.md
 main
git remote add origin https://github.com/H0mgaurav@gaurav:~/flutter/exercise$ git commit -m "first commit"
ePage/yoga-app.git
git push -u origin main[main fadbf22] first commit
 1 file changed, 1 insertion(+)
gaurav@gaurav:~/flutter/exercise$ git branch -M main
gaurav@gaurav:~/flutter/exercise$ git remote add origin https://github.com/H0mePage/yoga-app.git
fatal: remote origin already exists.
gaurav@gaurav:~/flutter/exercise$ git push -u origin main
fatal: remote error: 
  You can't push to git://github.com/samrao2/manager-4.git
  Use https://github.com/samrao2/manager-4.git
gaurav@gaurav:~/flutter/exercise$ git remote rm origin 
gaurav@gaurav:~/flutter/exercise$ git remote add origin git@github.com:user/repo.git
gaurav@gaurav:~/flutter/exercise$ git push origin master
error: src refspec master does not match any
error: failed to push some refs to 'git@github.com:user/repo.git'
gaurav@gaurav:~/flutter/exercise$ git config –global user.name “H0mePage”
error: key does not contain a section: –global
gaurav@gaurav:~/flutter/exercise$ git config --global user.name “H0mePage”
gaurav@gaurav:~/flutter/exercise$ git config –global user.email “gauravsuryavanshi7484@gmail.com”
error: key does not contain a section: –global
gaurav@gaurav:~/flutter/exercise$ git config --global user.email “gauravsuryavanshi7484@gmail.com”
gaurav@gaurav:~/flutter/exercise$ git config –global user.email “gauravsuryavanshi7484@gmail.com”
error: key does not contain a section: –global
gaurav@gaurav:~/flutter/exercise$ git remote add origin git@github.com:H0mePage/exercise.git
fatal: remote origin already exists.
gaurav@gaurav:~/flutter/exercise$  git remote add origin git@github.com:H0mePage/exer^[[Ccise.git
fatal: remote origin already exists.
gaurav@gaurav:~/flutter/exercise$ git remote rm origin
gaurav@gaurav:~/flutter/exercise$ git remote add origin git@github.com:H0mePage/exercise.git
gaurav@gaurav:~/flutter/exercise$ git add .
gaurav@gaurav:~/flutter/exercise$ git commit -m ‘your_message’
On branch main
nothing to commit, working tree clean
gaurav@gaurav:~/flutter/exercise$ git push origin master
error: src refspec master does not match any
error: failed to push some refs to 'git@github.com:H0mePage/exercise.git'
gaurav@gaurav:~/flutter/exercise$ git push origin master
error: src refspec master does not match any
error: failed to push some refs to 'git@github.com:H0mePage/exercise.git'
gaurav@gaurav:~/flutter/exercise$ ^C
gaurav@gaurav:~/flutter/exercise$ git commit -m "initial commit"
terOn branch main
nothing to commit, working tree clean
gaurav@gaurav:~/flutter/exercise$ git push origin master
error: src refspec master does not match any
error: failed to push some refs to 'git@github.com:H0mePage/exercise.git'
gaurav@gaurav:~/flutter/exercise$ git commit -m "initial commit"
terOn branch master
nothing to commit, working tree clean
gaurav@gaurav:~/flutter/exercise$ git push origin master
The authenticity of host 'github.com (13.234.210.38)' can't be established.
ECDSA key fingerprint is SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM.
Are you sure you want to continue connecting (yes/no/[fingerprint])? y
Please type 'yes', 'no' or the fingerprint: y
Please type 'yes', 'no' or the fingerprint: yes
Warning: Permanently added 'github.com,13.234.210.38' (ECDSA) to the list of known hosts.
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
gaurav@gaurav:~/flutter/exercise$ sudo yum install git
[sudo] password for gaurav: 
sudo: yum: command not found
gaurav@gaurav:~/flutter/exercise$ git push origin master
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
gaurav@gaurav:~/flutter/exercise$ git config user.name
“H0mePage”
gaurav@gaurav:~/flutter/exercise$ git init
mmit"
git branch -M main
git remote add origin httReinitialized existing Git repository in /home/gaurav/flutter/exercise/.git/
gaurav@gaurav:~/flutter/exercise$ git add README.md
ps://github.com/H0mePage/yoga-app.git
git push -u gaurav@gaurav:~/flutter/exercise$ git commit -m "first commit"
On branch master
nothing to commit, working tree clean
origin maingaurav@gaurav:~/flutter/exercise$ git branch -M main
gaurav@gaurav:~/flutter/exercise$ git remote add origin https://github.com/H0mePage/yoga-app.git
fatal: remote origin already exists.
gaurav@gaurav:~/flutter/exercise$ git push -u origin master
error: src refspec master does not match any
error: failed to push some refs to 'git@github.com:H0mePage/exercise.git'
gaurav@gaurav:~/flutter/exercise$  git branch -M master
gaurav@gaurav:~/flutter/exercise$  git remote add origin https://github.com/H0mePage/yoga-app.git
fatal: remote origin already exists.
gaurav@gaurav:~/flutter/exercise$ fatal: remote origin already exists.git remote add origin https://github.com/H0mePage/yoga-app.git
fatal:: command not found
gaurav@gaurav:~/flutter/exercise$ git remote add origin https://github.com/H0mePage/yoga-app.git
fatal: remote origin already exists.
gaurav@gaurav:~/flutter/exercise$ git remote rm origin
gaurav@gaurav:~/flutter/exercise$ git remote rm origin
fatal: No such remote: 'origin'
gaurav@gaurav:~/flutter/exercise$ git remote add origin https://github.com/H0mePage/yoga-app.git
gaurav@gaurav:~/flutter/exercise$ git remote -v
origin  https://github.com/H0mePage/yoga-app.git (fetch)
origin  https://github.com/H0mePage/yoga-app.git (push)
gaurav@gaurav:~/flutter/exercise$ git add .
gaurav@gaurav:~/flutter/exercise$ git push -u origin master
Branch 'master' set up to track remote branch 'master' from 'origin'.
Everything up-to-date
*/