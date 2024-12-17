import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  String movie;
  BookingScreen({required this.movie});

  List formats = ["2D", "3D", "4DX", "IMAX"];
  List days = [
    "S",
    "M",
    "T",
    "W",
    "T",
    "F",
    "S",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF212429),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(
                        "images/${movie}.jpg",
                      ),
                      fit: BoxFit.cover,
                      opacity: 0.6)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(Icons.share_outlined, color: Colors.white),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.favorite_border, color: Colors.white),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(movie,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Format:",
                          style: TextStyle(
                            color: Color(0xFFF7D300),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(
                        height: 25,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: index == 1
                                        ? const Color(0xFFF7D300)
                                        : const Color(0xFF212429),
                                    borderRadius: BorderRadius.circular(5),
                                    border: index != 1
                                        ? Border.all(color: Colors.white60)
                                        : null,
                                  ),
                                  child: Center(
                                    child: Text(formats[index],
                                        style: const TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Select Date",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 70,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                color:
                                    index == 1 ? const Color(0xFFF7D300) : null,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(days[index],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                  Text("${index + 8}",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.location_on,
                          color: Color(0xFFF7D300), size: 18),
                      Text(
                        "City Complex Cinema",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white70,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        "Hall 8",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white70,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const Text(
                    "Select Time",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: index == 1
                                    ? const Color(0xFFF7D300)
                                    : Colors.white24,
                                borderRadius: BorderRadius.circular(5),
                                border: index != 1
                                    ? Border.all(color: Colors.white30)
                                    : null,
                              ),
                              child: Center(
                                child: Text("${index + 10} : 30 AM",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 13),
                  const Row(
                    children: [
                      Icon(Icons.location_on,
                          color: Color(0xFFF7D300), size: 18),
                      Text(
                        "City Complex Cinema",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white70,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        "Hall 8",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white70,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const Text(
                    "Select Time",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: index == 1
                                    ? const Color(0xFFF7D300)
                                    : Colors.white24,
                                borderRadius: BorderRadius.circular(5),
                                border: index != 1
                                    ? Border.all(color: Colors.white30)
                                    : null,
                              ),
                              child: Center(
                                child: Text("${index + 8} : 30 AM",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 20),
                  Material(
                    color: const Color(0xFFF7D300).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: const Center(
                          child: Text(
                            "Book Ticket",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
