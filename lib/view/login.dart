import 'package:flutter/material.dart';
import 'package:images/view/signup.dart';
import 'package:images/widget/round_button.dart';
//import 'package:images/widget/textfiledCustom.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final Emailcontroller = TextEditingController();
  final Passwordcontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Emailcontroller.dispose;
    Passwordcontroller.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 130),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome ",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "Back ",
            style: TextStyle(fontSize: 25),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: Emailcontroller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.alternate_email),
                            hintText: 'Email',
                            filled: true,
                            fillColor: Color(0xffF8F9FA),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            )
                            // helperText: 'Enter Email xyz@gmail.com',
                            ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Your Email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        // obscuringCharacter: '*',
                        controller: Passwordcontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Password',
                            filled: true,
                            fillColor: Color(0xffF8F9FA),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            )
                            // helperText: 'Enter Your Password',
                            ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Your Password';
                          }
                          return null;
                        },
                      ),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // Custom_TextField(),
          Center(
            child: Round_button(
              title: 'Log in',
              onTap: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Don't you have any account ?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: const Text('Signup'))
            ],
          )
        ],
      ),
    ));
  }
}
