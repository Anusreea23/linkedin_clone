import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/image_constants.dart';
import 'package:linkedin_clone/view/home_screen/home_screen.dart';
import 'package:linkedin_clone/view/main_page/main_page.dart';

class SignUpPage4 extends StatefulWidget {
  const SignUpPage4({super.key});

  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

class _SignUpPage4State extends State<SignUpPage4> {
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    final passwordformkey = GlobalKey<FormState>();
    final confirmpasswordformkey = GlobalKey<FormState>();

    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController confirmpasswordcontroller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                ImageConstants.Logo2,
                scale: 3,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Set your Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: passwordformkey,
                  child: TextFormField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        labelText: "password*",
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        )),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a password";
                      }
                      if (value.length < 7) {
                        return "password must be atleast 7 characters long";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Form(
                  key: confirmpasswordformkey,
                  child: TextFormField(
                    controller: confirmpasswordcontroller,
                    decoration: InputDecoration(
                        labelText: "confirm password*",
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        )),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value != passwordcontroller.text) {
                        return "password does not match";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: remember,
                        activeColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            remember = value!;
                          });
                        }),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Remember me.",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Spacer(),
                    Text(
                      "Learn more",
                      style: TextStyle(fontSize: 16, color: Color(0xff0A66c2)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xff0A66c2)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: Colors.blue)))),
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
