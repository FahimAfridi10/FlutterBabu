import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[800],
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Image.asset('lib/images/car.webp', height: 400),
              ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                "Biggest Car MarketPlace in Bangladesh, Choose Your Dream Car",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "Best product for reasonable price",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 24),

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

                padding: const EdgeInsets.all(12),

                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),

              ),
            ),


            const Spacer(),

          ],
        ),
      ),
    );
  }
}
