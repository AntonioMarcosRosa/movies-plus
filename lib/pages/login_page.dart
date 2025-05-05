import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_plus/components/shared/custom_field.dart';
import 'package:movies_plus/components/shared/buttons/primary_button.dart';
import 'package:movies_plus/routes/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const CustomField(
            label: 'E-mail',
            isSensibleData: false,
            icon: Icons.mail,
            inputType: TextInputType.emailAddress,
          ),
          const CustomField(
            label: 'Password',
            isSensibleData: true,
            icon: Icons.lock,
            inputType: TextInputType.visiblePassword,
          ),
          PrimaryButton(
              onPressed: () => context.go(AppRoutes.home.path), text: 'Login'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Haven’t made an account?'),
              TextButton(
                  onPressed: () => context.go(AppRoutes.register.path),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.blueAccent),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
