// ignore_for_file: use_key_in_widget_constructors, no_leading_underscores_for_local_identifiers, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sort_child_properties_last

import'package:flutter/material.dart';
import 'Home_page.dart';

class LoginScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>(); 

    String _email = '', _password = '';
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFFF3F5F2),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: 258,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1590208133855-5ba4831deaec?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JlZW4lMjBjb2xvdXJ8ZW58MHx8MHx8fDA%3D"),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F5F2),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Create New Account",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF616366)),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xfffefdfc),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 8),
                          Container(
                            height: 58,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 85),
                                CircleAvatar(
                                    backgroundColor:
                                        const Color.fromARGB(68, 68, 65, 65),
                                    radius: 21.5,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTImj5adg1sNvD0iCEQcjIGr-CZGuiX1or61w&s"),
                                      radius: 20,
                                    )),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(68, 68, 65, 65),
                                  radius: 21.5,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://miro.medium.com/v2/resize:fit:512/1*d741kjfzNQv6W_d5wd37HA.png"),
                                  ),
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(68, 68, 65, 65),
                                  radius: 21.5,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBykZUddQc0sdrxhj8x340lEM-a6xiJniDXvztMuWderEnk9Jha_YvW3YzBx6z3eYXDMo&usqp=CAU"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "or use your email account",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(150, 90, 65, 65),
                              ),
                            ),
                          ),
                          SizedBox(height: 17),
                          SizedBox(
                            height: 50,
                            width: 250,
                            child: Form(
                             
                              child: TextFormField(
                                onSaved: (value) {
                                  _email = value ?? '';
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter Email";
                                  } 
                                  
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                      color:
                                          const Color.fromARGB(150, 90, 65, 65),
                                      fontSize: 20),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFF1CB273),
                                          width: 2.5)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 50,
                            width: 250,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Name",
                                labelStyle: TextStyle(
                                    color: const Color.fromARGB(150, 90, 65, 65),
                                    fontSize: 20),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF1CB273), width: 2.0)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 50,
                            width: 250,
                            child: Form(
                              key: formKey,
                              child: TextFormField(
                                 onSaved: (value) {
                                    _password = value ?? '';
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter Password";
                                    } 
                                    
                                    return null;
                                  },
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                      color:
                                          const Color.fromARGB(150, 90, 65, 65),
                                      fontSize: 20),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFF1CB273), width: 2.0)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () {if (formKey.currentState?.validate() ??
                                      false) {
                                    formKey.currentState?.save();
                                    print(_email);
                                    print(_password);
                                      Navigator.of(context).push(
                                          
                             MaterialPageRoute(builder: (_) => HomePage()),
                                        );
                                  }},
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: Size(250, 50)),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: const Color.fromARGB(110, 0, 0, 0)),
                              ),
                              TextButton(
                                onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage()));
                                },
                                child: Text(
                                  "Login here",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.green),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
