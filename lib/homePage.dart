import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[900],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.orange.shade900,
          items: const [
            Icon(Icons.home),
            Icon(Icons.shopping_bag),
            Icon(Icons.favorite),
            Icon(Icons.settings),
          ],
        ),
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  )),
              const SizedBox(width: 270),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const CircleAvatar(),
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    Container(
                      height: 130,
                      width: 250,
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(15),
                      ),
                      child: const Text("30% of on Winter Collection"),
                    )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "Categories",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 7; i++)
                    Container(
                      height: 90,
                      width: 90,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(15),
                      ),
                      child: const Text("30% off on Winter Collection"),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
