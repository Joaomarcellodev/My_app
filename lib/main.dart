import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Linketree'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/jm_profile.jpeg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 40),
            Text(
              'Jm developer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Desenvolvedor Fullstack',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(width: 200, height: 2, color: Colors.white),
            SizedBox(height: 20),
            Container(
              width: 400,
              height: 40,
             decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.teal
              ),
              borderRadius: BorderRadius.circular(9),
             ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.teal,),
                    SizedBox(width: 5,),
                    Text(
                      '(86) 9 8810 9565',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ) ,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
             Container(
              width: 400,
              height: 40,
             decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.teal,
              ),
              borderRadius: BorderRadius.circular(9)
             ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email , color: Colors.teal ,),
                    SizedBox( width: 10,),
                    Text(
                      'joaomarcellobraz@gmail.com',
                      style:TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
