import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 48),
              child: Image.asset('lib/images/bike.png', height: 200),
            ),

          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              "Yamaha YZF-R15 is a single-cylinder sport bike",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 24),

          Text(
            "Best product for reasonable price",
            style: TextStyle(color: Colors.grey),
          ),

          const Spacer(),

          GestureDetector(
            onTap:
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                ),

            child: Container(

              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),

              padding: const EdgeInsets.all(24),

              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),

            ),
          ),

          const Spacer(),

        ],
      ),
    );
  }
}
