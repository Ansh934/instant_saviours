import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Instant Saviours',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 16.0,
                  left: 8.0,
                  right: 16.0,
                ),
                child: SizedBox(
                    height: 40,
                    child: Image(
                        image: AssetImage('assets/texts/We tie up with.png'))),
              ),
              Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox.square(
                                dimension: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/Cardiology.png')),
                              ),
                              Text(
                                '70+ psychologist',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox.square(
                                dimension: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/Clinic Visit.png')),
                              ),
                              Text(
                                '100+ clinics',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox.square(
                            dimension: 50,
                            child: Image(
                                image: AssetImage(
                                    'assets/images/General Care.png')),
                          ),
                          Text(
                            '80+ specialised doctors',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 40,
                indent: 15,
                endIndent: 15,
                thickness: 3,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 0.0,
                  left: 40.0,
                  right: 40.0,
                ),
                child: SizedBox(
                    height: 32,
                    child:
                        Image(image: AssetImage('assets/texts/Partners.png'))),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 32.0,
                    left: 16.0,
                    right: 16.0,
                    bottom: 32.0,
                  ),
                  child:
                      Image(image: AssetImage('assets/images/investors.png')),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '2023 All Rights Reserved\nInstant Saviours',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(''),
            ],
          ),
        ),
      ),
    );
  }
}
