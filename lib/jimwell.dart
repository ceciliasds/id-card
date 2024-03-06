import 'package:flutter/material.dart';

class Jimwell extends StatefulWidget {
  const Jimwell({super.key});

  @override
  State<Jimwell> createState() => _JimwellState();
}

class _JimwellState extends State<Jimwell> {
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
                width: 220,
                height: 220,
                padding: EdgeInsets.all(5), // Adjust the padding as needed for the border width
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue, // Specify the border color
                    width: 3.0, // Specify the border width
                  ),
                ),
                child: ClipOval(
                  child: Image.asset('images/jim.jpg'),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Jimwelljan V. Bañas',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                ),
              ),
              Text(
                'STUDENT NO. 21-C-3510',
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
    );
  }
}
