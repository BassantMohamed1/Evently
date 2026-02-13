import 'package:evently/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import '../../widgets/language_toggle.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "register";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var local = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 16,
                children: [
                  Image.asset(
                    "assets/images/Logo.png",
                    width: size.width * 0.35,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintText: local.name,
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintText: local.email_placeholder,
                      prefixIcon: const Icon(Icons.email_rounded),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: local.password_placeholder,
                        prefixIcon: Icon(Icons.lock_rounded),
                        suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: local.re_password_placeholder,
                        prefixIcon: Icon(Icons.lock_rounded),
                        suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () {},
                          child: Text(local.create_account, style: TextStyle(fontSize: 22)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        local.already_have_account,
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterScreen.routeName);
                        },
                        child: Text(local.login_button),
                      ),
                    ],
                  ),
                  LanguageToggle(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
