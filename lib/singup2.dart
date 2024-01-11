// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:todo/login.dart';
import 'package:todo/singup2.dart';
//import 'package:project1/hom.dart';
//import 'package:shared_preferences/shared_preferences.dart';/

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Icon(
                  Icons.login,
                  size: 200,
                ),
                const Text(
                  'sign up',
                  style:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        labelText: "Email",
                        suffixIcon: Icon(Icons.email),
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                        labelText: "Password",
                        suffixIcon: Icon(Icons.key),
                        border: OutlineInputBorder()),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding:  const EdgeInsets.all(8.0),
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {
                    
                    },)),
                       const Text('remember',style: TextStyle(color: Color.fromARGB(255, 148, 191, 225)),),
                  ],
                ),

          SizedBox(
              width: 180,
              child: ElevatedButton(
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                  onPressed: () async {
                    //  SharedPreferences sp =
                    //     await SharedPreferences.getInstance();
                    //  sp.setBool('isLogged', true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  SignUp()),
                    );
                  },
                  child: const Text('sign up')),
                
            ),
            SizedBox(
              height: 15,
            ),
            const Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  SizedBox(
    width: 50,
    child: Divider(
      color: Colors.grey,
      thickness: 1,
    ),
  ),
  Text('OR'),
  SizedBox(
    width: 50,
    child: Divider(
      color: Colors.grey,
      thickness: 1,
    ),
  )
],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(  onPressed: () {}, icon: Icon(Icons.g_mobiledata)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.facebook_sharp)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.phone_android_outlined)),
                    ],
                  ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Text('ALREADY A USER?',style: TextStyle(color: Colors.blue),),
                 TextButton(onPressed: () async{
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => LogInPage()),
                   );
                 
                 },
                  child: const Text('LOGIN'))
              ],
            )
              ],
              

            )
          ]
            ),
      ),
     
        );
          
    
  }
}