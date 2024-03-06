import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int year = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset('images/logo.png', height: 60),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HOLY CROSS COLLEGE',
                        style: TextStyle(
                          fontFamily: '',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text('STA. ANA, PAMPANGA',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      ),
                      Text('S.Y. 2023-2024',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(5), // Adjust the padding as needed for the border width
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue, // Specify the border color
                    width: 3.0, // Specify the border width
                  ),
                ),
                child: ClipOval(
                  child: Image.asset('images/cecil.jpg', height: 200),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Ma. Cecilia S.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                ),
              ),
              Text(
                'DELOS SANTOS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'STUDENT NO. 21-C-3788',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 4.0,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.school_outlined, color: Colors.blue[900]),
                  Text("BS in Information Technology"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.numbers, color: Colors.blue[900]),
                  Text("$year"),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (year <= 3) {
              year++;
            }
          });
        },
        child: Text("+"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.card_membership, size: 50, color: Colors.white70),
                  Text(
                    "ID Card App",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              onTap: () {

              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Aizareel Mallari"),
                  ClipOval(
                    child: Image.asset('images/jim.jpg', height: 25),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {

              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Jimwelljan Bañas"),
                  ClipOval(
                    child: Image.asset('images/jim.jpg', height: 25),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kaice Sabroso"),
                  ClipOval(
                    child: Image.asset('images/jim.jpg', height: 25),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Veronica Bartolome"),
                  ClipOval(
                    child: Image.asset('images/jim.jpg', height: 25),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Row(
                          children: [
                            Text("GROUP"),
                          ],
                        ),
                      content: Container(
                        width: 200.0, // Set the width as per your preference
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Aizareel Mallari"),
                            Text("Cecilia Delos Santos"),
                            Text("Veronica Bartolome"),
                            Text("Kaice Sabroso"),
                            Text("Jimwelljan Bañas"),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Close"),
                        )
                      ],
                    );
                  },
                );
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("About us"),
                  Icon(Icons.info_outlined, color: Colors.blue[900]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
