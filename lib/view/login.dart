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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
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
                      // helperText: 'Enter Email xyz@gmail.com',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    // obscuringCharacter: '*',
                    controller: Passwordcontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
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
          SizedBox(
            height: 50,
          ),
          // Custom_TextField(),
          Round_button(
            title: 'Log in',
            onTap: () {
              if (_formKey.currentState!.validate()) {

              }
            },
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Don't you have any account ?"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
              }, child: Text('Signup')
              )
            ],
          )
        ],
      ),
    ));
  }
}
