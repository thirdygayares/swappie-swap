import 'package:flutter/material.dart';
import '../root_app.dart';

import '../theme/routes.dart';

// import 'package:firebase_auth/firebase_auth.dart';
import '../views/register.dart';
// import '/views/profile.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSubmitted = false;

  @override
  Widget build(BuildContext context) {
    final medque = MediaQuery.of(context);

    final logo = Image.asset('images/logo.png',
        fit: BoxFit.contain // or height:medque.size.height/5
        );

    final email = TextFormField(
      //  enabled: isSubmitted,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: 'your@gmail.com',
        labelText: 'Email',
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );

    final password = Column(
      children: [
        TextFormField(
          //enabled: isSubmitted,
          controller: passwordController,

          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: 'password',
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end, // i stopped here
          children: [
            MaterialButton(
                child: Text(
                  'Forgot Password',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Colors.white), // I put '?'
                ),
                onPressed: () {
                  //TODO forget password pop up
                }),
          ],
        ),
      ],
    );

    final userfields = Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          email,
          password,
        ],
      ),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: medque.size.width / 1.0,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // onPressed: () async {
        // try {
        //   FirebaseUser user = (await FirebaseAuth.instance
        //       .signInWithEmailAndPassword(
        //           email: emailController.text,
        //           password: passwordController.text)) as FirebaseUser;

        //   if (user != null) {
        //     Navigator.of(context).pushNamed(AppRoutes.homemenu);
        //   }
        // } catch (e) {
        //   print(e);
        //   emailController.text = '';
        //   passwordController.text = '';
        // }

        //todo authentication //Navigator.of(context).pushNamed(AppRoutes.authlogin);           //  print('Login Pressed');
        // },

        onPressed: () {
          Navigator.of(context)
              .pushNamed(AppRoutes.rootapp); //  print('Login Pressed');
        },
      ),
    );

    final bottomsection = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        loginButton,
        Padding(padding: EdgeInsets.all(8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'New Here?',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.white, // i replace with '?'
                  ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authregister);
              },
              child: Text(
                'Sign Up',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.white, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(35),
          child: Container(
            height: medque.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                logo,
                userfields,
                bottomsection,
                Padding(
                  padding: EdgeInsets.only(bottom: 150),
                  //child: bottomsection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
