import 'package:flutter/material.dart';
import 'package:movies_plus/components/shared/buttons/primary_button.dart';
import 'package:movies_plus/components/shared/buttons/seconday_button.dart';
import 'package:movies_plus/pages/login_page.dart';
import 'package:movies_plus/pages/register_page.dart';

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Watch movies anytime anywhere',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Explore a vast collection of blockbuster movies, timeless classics, and the latest releases.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                PrimaryButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const LoginPage())),
                  text: 'Login',
                ),
                SecondayButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const RegisterPage())),
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
