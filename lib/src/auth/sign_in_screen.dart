import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quitanda/src/auth/Components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // --- App name ---
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: 'Green',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'grocer',
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),

                // --- Categories ---
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Frutas',
                        speed: const Duration(milliseconds: 250),
                      ),
                      TypewriterAnimatedText(
                        'Verduras',
                        speed: const Duration(milliseconds: 250),
                      ),
                      TypewriterAnimatedText(
                        'Legumes',
                        speed: const Duration(milliseconds: 250),
                      ),
                      TypewriterAnimatedText(
                        'Carnes',
                        speed: const Duration(milliseconds: 250),
                      ),
                      TypewriterAnimatedText(
                        'Cereais',
                        speed: const Duration(milliseconds: 250),
                      ),
                      TypewriterAnimatedText(
                        'Laticíneos',
                        speed: const Duration(milliseconds: 250),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // --- Form Container ---
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //  --- Email ---
                const CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),

                //  --- Password ---
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Password',
                  isSecret: true,
                ),

                //  --- Button enter ---
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Entrar',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                //  --- Forgot password ---
                const Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),

                //  --- Divider ---
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withAlpha(90),
                        thickness: 2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Ou'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withAlpha(90),
                        thickness: 2,
                      ),
                    ),
                  ]),
                ),

                //  --- Button new user ---
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Criar conta',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
