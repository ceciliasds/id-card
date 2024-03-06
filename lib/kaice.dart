import 'package:flutter/material.dart';

class Kaice extends StatefulWidget {
  const Kaice({super.key});

  @override
  State<Kaice> createState() => _KaiceState();
}

class _KaiceState extends State<Kaice> {
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
                  child: Image.asset('images/kaice.jpg', height: 200),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'KAICE DENCARL A.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                ),
              ),
              Text(
                'SABROSO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'STUDENT NO. 21-C-3618',
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
