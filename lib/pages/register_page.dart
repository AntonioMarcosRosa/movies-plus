import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_plus/components/shared/custom_field.dart';
import 'package:movies_plus/components/shared/buttons/primary_button.dart';
import 'package:movies_plus/routes/app_routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign Up',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const CustomField(
            label: 'E-mail',
            isSensibleData: false,
            icon: Icons.mail,
            inputType: TextInputType.emailAddress,
          ),
          const CustomField(
            label: 'Username',
            isSensibleData: false,
            icon: Icons.person,
            inputType: TextInputType.visiblePassword,
          ),
          const CustomField(
            label: 'Password',
            isSensibleData: true,
            icon: Icons.lock,
            inputType: TextInputType.visiblePassword,
          ),
          PrimaryButton(
              onPressed: () => context.go(AppRoutes.home.path),
              text: 'Create Account'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                onPressed: () => context.go(AppRoutes.login.path),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
