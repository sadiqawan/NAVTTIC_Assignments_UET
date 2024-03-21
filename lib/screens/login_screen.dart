import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailC, passC;


  @override
  void initState() {
   emailC = TextEditingController();
   passC= TextEditingController();
    super.initState();
  }

  @override
  void dispose() {

    emailC.dispose();
    passC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailC,
              decoration: const InputDecoration(
                hintText: 'Email',
               labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passC,
              decoration: const InputDecoration(
                hintText: 'Password',
               labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye),
                  prefixIcon: Icon(Icons.lock)

              ),
            ),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){

            }, child: const Text('Login') ),
          ],
        ),
      ),
    );
  }
}
