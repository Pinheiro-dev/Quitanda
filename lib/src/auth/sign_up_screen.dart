import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:quitanda/src/Config/custom_colors.dart';
import 'package:quitanda/src/auth/Components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormater = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              // --- Register view ---
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),

                  // --- Form ---
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // --- Email ---
                        const CustomTextField(
                          icon: Icons.email,
                          label: 'Email',
                          textInputType: TextInputType.emailAddress,
                        ),

                        // --- Passowrd ---
                        const CustomTextField(
                          icon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                        ),

                        // --- Name ---
                        const CustomTextField(
                          icon: Icons.person,
                          label: 'Nome',
                          textInputType: TextInputType.name,
                        ),

                        // --- Cellphone ---
                        CustomTextField(
                          icon: Icons.phone,
                          label: 'Celular',
                          inputFormatters: [phoneFormater],
                          textInputType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                        ),

                        // --- CPF ---
                        CustomTextField(
                          icon: Icons.file_copy,
                          label: 'CPF',
                          inputFormatters: [cpfFormatter],
                          textInputType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                        ),

                        // --- Register button ---
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
                              'Cadastrar usuário',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // --- Back button ---
              Positioned(
                left: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
