import 'package:flutter/material.dart';
import 'package:ghmapp/utils/colors.dart';
import 'package:ghmapp/pages/myhomepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/loginbackground.png"),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 55),
                Text(
                  "Ghaat Management",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: AppColor.colorPrimaryDark,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cloud, color: AppColor.colorAccent),
                    Text(
                      " Get All Your Data From Sites Globally And More Securely.....",
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        color: AppColor.colorPrimaryMid,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 150),
                Container(
                    width: 240.0,
                    height: 240.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/logo3.PNG')))),
                const SizedBox(height: 150),
                ElevatedButton(
                  onPressed: () {
                    openDialog();
                  }, //onPressed

                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.colorPrimary,
                      fixedSize: const Size(300, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '\u00A9 2022 Powered By LMB Technologies   ',
                      style: TextStyle(
                          color: AppColor.colorPrimaryDark, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          )),
    );
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            contentPadding: EdgeInsets.zero,
            content: Container(
              height: 290,
              width: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.colorPrimaryDark,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    height: 55,
                    child: SizedBox(
                        height: 55,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25, top: 18),
                          child: Text(
                            'Welcome...',
                            style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: AppColor.colorWhite),
                          ),
                        )),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email Or Mobile No.',
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.colorPrimary,
                          fixedSize: const Size(270, 45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ));
}
