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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/jm_profile.jpeg'),
              radius: 100,
            ),
            SizedBox(height: 20),
            Text(
              "João Marcello",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Pacifico',
                fontSize: 30,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Developer Fullstack',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'SourcePro',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              height: 18,
              indent: 80,
              endIndent: 80,
              color: Colors.white,
            ),

            Card(
              child: SizedBox(
                width: 500,
                child: ListTile(
                  title: Center(
                    child: Text(
                      '+55 86 9 8810-9565',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                  leading: Icon(Icons.phone, color: Colors.teal),
                ),
              ),
            ),
            SizedBox(width: 10),
            Card(
              child: SizedBox(
                width: 500,
                child: ListTile(
                  title: Center(
                    child: Text(
                      'joaomarcellobraz@gmail.com',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                  leading: Icon(Icons.mail, color: Colors.teal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
