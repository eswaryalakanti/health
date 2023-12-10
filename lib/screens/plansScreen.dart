import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PlansScreen extends StatefulWidget {
  const PlansScreen({super.key});

  @override
  State<PlansScreen> createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/profile-img.jpg'),
        ),
        actions: [
          Icon(
            Icons.message_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 160,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green.shade300,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      child: Text(
                        'Medical center',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      width: 150,
                    ),
                    SizedBox(
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt '),
                      width: 150,
                    )
                  ],
                ),
                Expanded(child: Image.asset('assets/doctor.png')),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CarouselSlider(
            items: [
              Container(
                width: 200,
                margin: EdgeInsets.all(3.0),
                color: Colors.green.shade300,
              ),

              //2nd Image of Slider
              Container(
                  width: 200,
                  margin: EdgeInsets.all(3.0),
                  color: Colors.green.shade300),

              //3rd Image of Slider
              Container(
                  width: 200,
                  margin: EdgeInsets.all(3.0),
                  color: Colors.green.shade300),
              Container(
                  width: 200,
                  margin: EdgeInsets.all(3.0),
                  color: Colors.green.shade300),
            ],
            options: CarouselOptions(
              height: 100.0,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'All Doctors',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(3.0),
                color: Colors.green.shade300,
              ),
              Container(
                  margin: EdgeInsets.all(3.0), color: Colors.green.shade300),
              Container(
                  margin: EdgeInsets.all(3.0), color: Colors.green.shade300),
              Container(
                  margin: EdgeInsets.all(3.0), color: Colors.green.shade300),
            ],
            options: CarouselOptions(
              height: 150.0,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
