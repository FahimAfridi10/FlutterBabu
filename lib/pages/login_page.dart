import 'package:flutter/material.dart';
import 'package:shopapp/components/login_button.dart';
import 'package:shopapp/components/text_field.dart';
import 'package:shopapp/pages/intro_page.dart';
import '../components/login_images.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn(){
    //print('Sign User In');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 30),

              ////logo
              const Icon(
                Icons.email_outlined,
                size: 150,
              ),

              const SizedBox(height: 20),

              ////welcome back, you've been missed!
              Text(
                'Welcome back, you\'ve been missed',
                style: TextStyle(
                    color: Colors.grey[900],
                  fontSize: 18
                ),
              ),

              const SizedBox(height: 50),

              ////username textField
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              ////password textField
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              ////forgot password?
              Text('Forgot Password?', style: TextStyle(color: Colors.grey[600]),),


              const SizedBox(height: 35),

              ////sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 80),

              ////or continue with
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[100],
                        )
                    ),
                    Text('Or Continue with'),
                    Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[100],
                        ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10),


              ////google+apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  LoginImages(imagePath: 'lib/images/google.png'),
                  SizedBox(width: 10),
                  LoginImages(imagePath: 'lib/images/instagram.png'),
                  SizedBox(width: 10),
                  LoginImages(imagePath: 'lib/images/whatsapp.png'),
                  SizedBox(width: 10),
                  LoginImages(imagePath: 'lib/images/apple.png'),
                ]
              ),


              const SizedBox(height: 50),
              ////not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?'),
                  const SizedBox(width: 4),
                  Text(
                    'Register Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      )
    );
  }
}
