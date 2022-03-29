import 'package:flutter/material.dart';
import '../theme/routes.dart';

// import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  bool isSubmitted = false;

  @override
  Widget build(BuildContext context) {
    final medque = MediaQuery.of(context);

    final logo = Image.asset('images/logo.png',
        fit: BoxFit.contain // or height:medque.size.height/5
        );

    final username = TextFormField(
      //  enabled: isSubmitted,
      controller: usernameController,
      style: TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        hintText: 'Pear Debelo',
        labelText: 'Username',
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );

    final email = TextFormField(
      //  enabled: isSubmitted,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
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

    final password = TextFormField(
      //enabled: isSubmitted,
      controller: passwordController,

      style: TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        hintText: 'password',
        labelText: 'Password',
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );

    final repassword = TextFormField(
      //enabled: isSubmitted,
      controller: repasswordController,

      style: TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: 'password',
        labelText: 'Re-enter Password',
        labelStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );

    final userfields = Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          username,
          email,
          password,
          repassword,
        ],
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: medque.size.width / 1.0,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Register',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        onPressed: () async {
          // try {
          //   FirebaseUser user =
          //       (await FirebaseAuth.instance.createUserWithEmailAndPassword(
          //     email: emailController.text,
          //     password: passwordController.text,
          //   ))
          //           .user as FirebaseUser;
          //   if (user != null) {
          //     UserUpdateInfo updateUser = UserUpdateInfo();
          //     updateUser.displayName = usernameController.text;
          //     user.updateProfile(updateUser);
          //     Navigator.of(context).pushNamed(AppRoutes.homemenu);
          //   }
          // } catch (e) {
          //   print(e);
          //   usernameController.text = '';
          //   emailController.text = '';
          //   passwordController.text = '';
          //   repasswordController.text = '';
          // }

          //todo authentication //Navigator.of(context).pushNamed(AppRoutes.authlogin);           //  print('Login Pressed');
        },
      ),
    );

    final bottomsection = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        registerButton,
        Padding(padding: EdgeInsets.all(8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Already a member?',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.white, // i replace with '?'
                  ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authlogin);
              },
              child: Text(
                'Login',
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
                // bottomsection,
                Padding(
                  padding: EdgeInsets.only(bottom: 150, top: 20),
                  child: bottomsection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserUpdateInfo {
  set displayName(String displayName) {}
}

class FirebaseUser {
  void updateProfile(UserUpdateInfo updateUser) {}
}
