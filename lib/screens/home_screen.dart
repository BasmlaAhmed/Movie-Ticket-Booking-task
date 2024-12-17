import 'package:flutter/material.dart';
import 'package:movie_ticket_app_basmla/screens/booking_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List movies = [
    "Clueless",
    "Chocolate factory",
    "Caroline",
    "Maleficent",
    "Matilda",
    "Rat"
  ];
  List movies2 = [
    "Caroline",
    "Maleficent",
    "Rat",
    "Matilda",
    "Chocolate factory",
    "Clueless",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sort, color: Colors.white, size: 32),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "DP Cineplex",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search, color: Colors.white, size: 28),
          Icon(Icons.filter_alt_outlined, color: Colors.white, size: 28),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Playing Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                          color: Color(0xFFF7D300),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 390,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookingScreen(movie: movies[index])));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "images/${movies[index]}.jpg",
                                height: 260,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies[index],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 4),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFF7D300),
                                      size: 20,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFF7D300)),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_rounded,
                                      color: Color.fromARGB(197, 255, 255, 255),
                                      size: 15,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      "2h 30min",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              197, 255, 255, 255)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color(0xFF2F3236),
                    ),
                    child: const Text(
                      "COMMING SOON",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                          color: Color(0xFFF7D300),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 390,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "images/${movies2[index]}.jpg",
                                height: 200,
                                width: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies2[index],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
