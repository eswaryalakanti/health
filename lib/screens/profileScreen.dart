import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.edit),
        ],
        title: Center(
          child: Text(
            'My Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            // color: Colors.grey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile-img.jpg'),
                    radius: 50,
                  ),
                ],
              ),
            ),
          ),
          Text(
            'First Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blue.shade200,
            child: Text("Jayaraj"),
            padding: EdgeInsets.all(10),
            width: 350,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Last Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blue.shade200,
            child: Text("Chippada"),
            padding: EdgeInsets.all(10),
            width: 350,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Email Address',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blue.shade200,
            child: Text("Jayaraj.c21@iiits.in"),
            padding: EdgeInsets.all(10),
            width: 350,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Age',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blue.shade200,
            child: Text("20"),
            padding: EdgeInsets.all(10),
            width: 350,
          ),
        ],
      ),
    );
  }
}
