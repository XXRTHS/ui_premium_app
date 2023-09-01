import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 45.0,
                  height: 45.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/check-mark-cross-circles.png'),
                  ),
                ),
                Text(
                  'Premium',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("              "),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The Secrets to be Fluent in English",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCategoryButton('Full Access to', 'Pattern lesson',
                          'assets/picture/geography.png'),
                      SizedBox(width: 16.0, height: 16.0),
                      _buildCategoryButton(
                        'Unlock',
                        'All Limitation',
                        'assets/picture/studying.png',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCategoryButton(
                          'All Topics', 'Available', 'assets/picture/book.png'),
                      SizedBox(width: 16.0, height: 16.0),
                      _buildCategoryButton('Personalized', 'Coaching',
                          'assets/picture/exam.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "2021 Special Early Birds Offer",
                  style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.pinkAccent),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "IDR50.000",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '/mounth',
                  style: TextStyle(fontSize: 10, color: Colors.black87),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.teal.shade300,
                      border: Border.all(color: Colors.black87, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 7,
                            blurRadius: 12,
                            offset: Offset(0, 10))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start 3 Days Free Trial',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View all Plan',
                  style: TextStyle(fontSize: 10,decoration: TextDecoration.underline, color: Colors.black87),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container _buildCategoryButton(String text, String text2, image) {
  return Container(
    width: 130.0,
    height: 175.0,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black87, width: 1.0),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 7,
              blurRadius: 12,
              offset: Offset(0, 10))
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(image),
            ),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text2,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
