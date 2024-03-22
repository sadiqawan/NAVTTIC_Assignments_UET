import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nattic_assignments/screens/first_assignment.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailC, passC;
  bool obscureText = true;

  @override
  void initState() {
    emailC = TextEditingController();
    passC = TextEditingController();
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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
               
                decoration: BoxDecoration(  color: Colors.teal,borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'Welcome Back ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailC,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureText,
                controller: passC,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(obscureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                    prefixIcon: const Icon(Icons.lock)),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: () {}, child: const Text('ForgetPassword'))),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Column(
                children: [
                  GestureDetector(
                    onTap:(){

                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstAssignment()));
              },


                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
