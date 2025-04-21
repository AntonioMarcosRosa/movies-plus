import 'package:flutter/material.dart';
import 'package:movies_plus/components/primary_button.dart';
import 'package:movies_plus/components/seconday_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/prey.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: size.height * .33,
            width: size.width,
            padding: const EdgeInsets.symmetric(
              vertical: 29,
              horizontal: 19,
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.8),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Watch movies anytime anywhere',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Explore a vast collection of blockbuster movies, timeless classics, and the latest releases.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                PrimaryButton(
                  onPressed: null,
                  text: 'Login',
                ),
                SecondayButton(
                  onPressed: null,
                  text: 'Sign Up',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
