import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 22, 29, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(16, 22, 29, 1),
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: GestureDetector(
              onTap: () {
                // print('Back Button tapped');
              },
              child: const Text(
                'Back',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ),
        title: SizedBox(
          // height: 50,
          width: 180,
          child: Image.asset(
            'images/prime4.png',
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create account',
                style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Name',
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Your email address',
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: isCheck,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Create a password',
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(
                    Icons.info_outline_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Your password must be at least 6 characters.',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      fillColor: const MaterialStatePropertyAll(Colors.white),
                      checkColor: Colors.blue,
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      }),
                  const SizedBox(
                    width: 6.0,
                  ),
                  const Text(
                    'Show Password',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  print('Create account button tapped');
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromRGBO(51, 120, 170, 1),
                  ),
                  child: const Center(
                    child: Text(
                      'Create your Amazon account',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              RichText(
                text: const TextSpan(style: TextStyle(fontSize: 16), children: [
                  TextSpan(
                    text: 'By creating an account, you agree to the ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'Prime Video Terms of Use ',
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text:
                        'and licnese aggrements which can be found on the Amazon website.',
                    style: TextStyle(color: Colors.grey),
                  )
                ]),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  print('sign in button tapped');
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(68, 81, 99, 1)),
                  child: const Center(
                    child: Text(
                      'Sign-in now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              const Center(
                child: Text(
                  ' 1996-2021, Amazon.com, Inc. or its affiliates',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
