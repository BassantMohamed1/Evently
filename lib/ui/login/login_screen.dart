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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 16,
                children: [
                  Image.asset(
                    "assets/images/Logo.png",
                    width: size.width * 0.35,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email_rounded),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_rounded),
                      suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Forget Password?"),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () {},
                          child: Text("Login", style: TextStyle(fontSize: 22)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have Account ?",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Create Account"),
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
                          "Or",
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
                          "Login With Google",
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
