import 'package:flutter/material.dart';
import 'package:uber_rider/screens/loginScreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String idScreen='register';
  TextEditingController nameController=new TextEditingController();
  TextEditingController emailController=new TextEditingController();
  TextEditingController phoneController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage('images/logo.png'),
                width: 350.0,
                height: 350.0,
                alignment: Alignment.center,
              ),
              SizedBox(height: 20,),
              Text(
                'Register as Rider',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: 'input your name',
                    hintStyle: TextStyle(fontSize: 15)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: 'input your email',
                    hintStyle: TextStyle(fontSize: 15)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: 'input your phone',
                    hintStyle: TextStyle(fontSize: 15)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: 'input your password',
                    hintStyle: TextStyle(fontSize: 15)
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){},
                  child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text('Register',style: TextStyle(color: Colors.black),)),
                  style:ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.yellow),
                      elevation:MaterialStateProperty.all(1.5),
                      shape:MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ))
                  )
              ),
              SizedBox(height: 20,),
              TextButton(
                child: Text('already have account?',style: TextStyle(color: Colors.black),),
                onPressed: (){Navigator.pushNamedAndRemoveUntil(context, LoginScreen.idScreen, (route) => false);},
              )
            ],
          ),
        ),
      ),
    );
  }
}
