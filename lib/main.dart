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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.teal,
      ),
      home: const MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(75),
                    child: Image.asset(
                      'assets/profile.jpg',
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Tuanku Islam Bersujud",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.tealAccent,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.tealAccent,
                      indent: 100,
                      endIndent: 100,
                    )
                  ],
                ),
              ),
              MyCard(
                iconValue: Icon(
                  Icons.phone,
                  size: 24,
                  color: Colors.teal,
                ),
                textValue: Text(
                  "085880057513",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                  ),
                ),
              ),
              MyCard(
                iconValue: Icon(
                  Icons.email,
                  size: 24,
                  color: Colors.teal,
                ),
                textValue: Text(
                  "xplayspixel@gmail.com",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget iconValue;
  final Widget textValue;
  MyCard({required this.iconValue, required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: iconValue,
              ),
              textValue,
            ],
          ),
        ),
      ),
    );
  }
}
