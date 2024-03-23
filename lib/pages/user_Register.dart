import 'package:flutter/material.dart';
import 'package:skillhubfrontend/Services/user_Service.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({Key? key}) : super(key: key);

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  TextEditingController name = TextEditingController();
  TextEditingController adrs = TextEditingController();
  String gender = ''; // Changed from TextEditingController to String
  TextEditingController phnno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void regUser() async {
    final response = await userApiSer().Sentdata(
      name.text,
      adrs.text,
      gender,
      phnno.text,
      email.text,
      pass.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF752FFF),
          title: Text(
            "skillHub",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your name",
                    labelText: "Name",
                    fillColor: Color(0xFF0dadae0).withOpacity(0.2),
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: adrs,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your address",
                    labelText: "Address",
                    fillColor: Color(0xFF0dadae0).withOpacity(0.2),
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Male',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                        Text('Male'),
                        Radio<String>(
                          value: 'Female',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                        Text('Female'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  controller: phnno,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Phone No.",
                    labelText: "Contact No.",
                    fillColor: Color(0xFF0dadae0).withOpacity(0.2),
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your email ID",
                    labelText: "Email ID",
                    fillColor: Color(0xFF0dadae0).withOpacity(0.2),
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    labelText: "Password",
                    fillColor: Color(0xFF0dadae0).withOpacity(0.2),
                    filled: true,
                    suffixIcon: Icon(Icons.key_outlined, color: Color(0xFF752FFF)),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF752FFF).withOpacity(0.9),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    onPressed: regUser,
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(UserRegister());
}
