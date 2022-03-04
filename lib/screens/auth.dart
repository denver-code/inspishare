import 'package:flutter/material.dart';
import 'package:inspishare/internal/hexToColor.dart';
import 'package:inspishare/templates/TextFieldModern.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              height: 62,
              alignment: Alignment.center,
              child: const Text("Authorize", style: TextStyle(fontSize: 15)),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromRGBO(221, 221, 221, 1),
                  width: 1,
                ),
              )),
          SizedBox(height: MediaQuery.of(context).size.height / 4.5),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Your email",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: HexColor.fromHex("#343237"))),
                const SizedBox(
                  height: 15,
                ),
                Text("Enter the email address to get the login code",
                    style: TextStyle(color: HexColor.fromHex("#7F7F7F"))),
                const SizedBox(
                  height: 15,
                ),
                TextFieldModern(
                    controller: _email,
                    confirmPass: TextEditingController(),
                    obscureText: false,
                    isConfirm: false,
                    labelText: "Tell us your email",
                    helperText: "",
                    hintText: "you@example.com",
                    isPassword: false),
                const SizedBox(
                  height: 15,
                ),
                Text(
                    "By using the InspiShare application, you acknowledge and agree with our Privacy Policy",
                    style: TextStyle(
                        color: HexColor.fromHex("#7F7F7F"), fontSize: 13)),
                const SizedBox(
                  height: 120,
                )
              ],
            ),
          )),
          Container(
            height: 55,
            color: HexColor.fromHex("#008CFF"),
            alignment: Alignment.center,
            child: const Text("Receive Code",
                style: TextStyle(color: Colors.white, fontSize: 13)),
          ),
        ],
      ),
    ));
  }
}
