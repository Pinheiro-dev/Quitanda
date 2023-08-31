import 'package:flutter/material.dart';
import 'package:quitanda/src/Config/custom_colors.dart';
import 'package:quitanda/src/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: CustomColors.customSwatchColor),
          scaffoldBackgroundColor: Colors.white.withAlpha(190),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const SignInScreen(),
      ),
    );
  }
}
