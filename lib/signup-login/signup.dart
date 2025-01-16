import 'package:flutter/material.dart';
import 'package:spartan_app/app_page/home_page.dart';

final String fontfam ='Sakana';

class Signup extends StatelessWidget {
  const Signup(this.loginPagePointer, {super.key});

  final void Function() loginPagePointer;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 107, 0, 0),
      width: MediaQuery.sizeOf(context).width / 1.2,
      child: ListView(
      children: [Column(
        children: [
          Text(
            "Create An Account",
            style: TextStyle(fontFamily: fontfam, fontSize: 20),
          ),
          SizedBox(
            height: 120,
          ),
          Container(
            height: 62,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 51,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.black,
                            side: BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text(
                          "sign up",
                          style: TextStyle(
                              fontFamily: fontfam, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 51,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: loginPagePointer,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: fontfam, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          userNames(),
          SizedBox(
            height: 13,
          ),
          emailField(),
          SizedBox(
            height: 13,
          ),
          passwordField(),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(child: horizontalLine()),
              Expanded(child: horizontalLine()),
              Expanded(child: horizontalLine()),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SignUpButton(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(child: horizontalLine()),
              Text(
                'Or Sign Up With',
                style: TextStyle(fontFamily: fontfam),
              ),
              Expanded(child: horizontalLine())
            ],
          ),
          SizedBox(
            height: 20,
          ),
          OtherLoginOptions()
        ],
      ),]
         
      ),
    );
  }
}

class userNames extends StatelessWidget {
  userNames({super.key});


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(Icons.person_outline_sharp),
          labelText: 'UserName',
          labelStyle: TextStyle(fontFamily: fontfam, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}

class emailField extends StatelessWidget {
  const emailField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(Icons.email_outlined),
          labelText: 'Email',
          labelStyle: TextStyle(fontFamily: fontfam, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}

class passwordField extends StatefulWidget {
  passwordField({super.key});

  @override
  State<passwordField> createState() => _passwordFieldState();
}

class _passwordFieldState extends State<passwordField> {
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passwordController,
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              child: isPasswordVisible
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off)),
          labelText: 'Password',
          labelStyle: TextStyle(fontFamily: fontfam, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}

class horizontalLine extends StatelessWidget {
  const horizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey,
      thickness: 2,
      indent: 4,
      endIndent: 4,
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(fontFamily: "Sakana", color: Colors.white),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.exit_to_app,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}

class OtherLoginOptions extends StatelessWidget {
  const OtherLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(onPressed: (){}, child:Image.asset('assets/images/google.png',width:20),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        ),
        OutlinedButton(onPressed: (){}, child:Image.asset('assets/images/facebook.png',width:20),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        ),
        OutlinedButton(onPressed: (){}, child:Image.asset('assets/images/apple-logo.png',width:20),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        ),
        
      ],
    );
  }
}