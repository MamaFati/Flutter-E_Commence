import 'package:e_commernce/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              'lib/images/5842a0dca6515b1e0ad75af5.png',
              height: 250,
            ),
          ),
          SizedBox(height: 48),
          // Tittle
          const Text(
            "Just Do It",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          // Sutitle
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              "Brand new heels with premuim quality !!",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),

          // start button
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                child: const Text(
                  "Shop Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
