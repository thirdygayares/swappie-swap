import 'package:flutter/material.dart';
import '../theme/routes.dart';

class OpeningView extends StatelessWidget {
  const OpeningView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final medque = MediaQuery.of(context);
    final logo = Image.asset
       ('images/logo.png',
       fit:BoxFit.contain  // or height:medque.size.height/5
      
       );

  final loginButton = Material(
      elevation:5.0,
      borderRadius: BorderRadius.circular(25.0),
      color:Colors.white,
      
      child:MaterialButton(
        minWidth: medque.size.width/1.0,
        padding:EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Login',
          textAlign: TextAlign.center,
          style:TextStyle(fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.bold
          ),
        ),
        onPressed: (){
        Navigator.of(context).pushNamed(AppRoutes.authlogin);           //  print('Login Pressed');
        },
      ),
    );
    final registerButton = Material(
      elevation:5.0,
      borderRadius: BorderRadius.circular(25.0),
      color:Colors.white,
      
      child:MaterialButton(
        minWidth: medque.size.width/1.0,
        padding:EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Register',
          textAlign: TextAlign.center,
          style:TextStyle(fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.bold
          ),
        ),
        onPressed: (){
            Navigator.of(context).pushNamed(AppRoutes.authregister);                           //print('Register Pressed');
        },
      ),
    );


    final buttons = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         loginButton,
         Padding(
           padding:EdgeInsets.fromLTRB(0,15,0,70),  
           child:registerButton, 
         ),
         
      ],
      );

    return Scaffold(
      backgroundColor: Colors.indigo, //rgba(66, 118, 180, 1)

      body:Padding(
        padding:EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding:EdgeInsets.only(top:40),
            child: logo,
            ),
            buttons

          ],)
        ),
    );
  }
}