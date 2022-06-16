import 'package:flutter/material.dart';
import 'package:loginpage/loginpage1.dart';
import 'package:loginpage/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {

  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = "";
  String password = "";

   TextEditingController _user = TextEditingController();
   TextEditingController _password = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
            SizedBox(height: 30,),
            CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.person, size: 40),
            ),
            Form(child: 
            Column( 
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  
                  child: TextFormField(
                    controller: _user ,
                    decoration: InputDecoration(
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      labelText: "user name",
                      icon: Icon(Icons.person)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: _password ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    // focusedBorder : OutlineInputBorder(borderSide:BorderSide( width: 2.0,color: Colors.black),),
                      labelText: "password",
                      icon: Icon(Icons.lock)
                    ),
                  ),
                )
              ],
            )),
            TextButton(onPressed: (){}, child: Text("Forget Password?")),
             ElevatedButton(onPressed: () {
               user = _user.text;
               password = _password.text;
               Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage1(user1: user, password1: password)));
               
             }, child: Text("Login")),
             
           ElevatedButton(onPressed: (){
             
           Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage(
           
           )));

           }, child: Text("Register"))  

          ],
        ),
      ),
      
    );
  }
}