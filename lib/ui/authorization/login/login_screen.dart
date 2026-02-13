import 'package:evently/l10n/generated/app_localizations.dart';
import 'package:evently/ui/authorization/register/register_screen.dart';
import 'package:evently/ui/widgets/language_toggle.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";

  const LoginScreen({super.key});

  // final _formKey = GlobalKey<FormState>();
  // final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var local = AppLocalizations.of(context)!;
    return Scaffold(
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(local.forget_password),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () {},
                          child: Text(local.login_button, style: TextStyle(fontSize: 22)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        local.dont_have_account,
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterScreen.routeName);
                        },
                        child: Text(local.create_account),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      spacing: 16,
                      children: [
                        Expanded(child: Divider()),
                        Text(
                          local.or_divider,
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        Image.asset("assets/images/super g.png"),
                        Text(
                          local.login_with_google,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
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
