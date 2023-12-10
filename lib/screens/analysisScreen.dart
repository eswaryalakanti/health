import 'package:flutter/material.dart';

class Analysis extends StatelessWidget {
  static const routeName = '/analysis';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'For Today',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: GridView(
          padding: EdgeInsets.all(25),
          children: [
            Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/heart.jpg',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '105 bpm',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/water.jpg')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '2.1 liters',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Expanded(
                      child: Image.asset('assets/walk.jpg', fit: BoxFit.cover)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '2628 Steps',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Expanded(
                      child:
                          Image.asset('assets/sleep.jpg', fit: BoxFit.cover)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '08:00 hours',
                    style: TextStyle(color: Colors.purple),
                  )
                ],
              ),
            ),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 80),
        ),
      ),
    );
  }
}
