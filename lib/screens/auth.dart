import 'package:flutter/material.dart';
import 'package:inspishare/internal/hexToColor.dart';
import 'package:inspishare/internal/httpApi.dart';
import 'package:inspishare/templates/TextFieldModern.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _email = TextEditingController();
  bool _visible = false;
  // ignore: non_constant_identifier_names
  String _email_text = "";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
              height: MediaQuery.of(context).size.height / 14,
              alignment: Alignment.center,
              child: const Text("Authorize", style: TextStyle(fontSize: 15)),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromRGBO(221, 221, 221, 1),
                  width: 1,
                ),
              )),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 17.5),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 4.5),
                Text("Your email",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: HexColor.fromHex("#343237"))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Text("Enter the email address to get the login code",
                    style: TextStyle(color: HexColor.fromHex("#7F7F7F"))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 15.5,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(9),
                      topRight: Radius.circular(9),
                      bottomLeft: Radius.circular(9),
                      bottomRight: Radius.circular(9),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                          offset: Offset(0, 4),
                          blurRadius: 8)
                    ],
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: TextFormField(
                      controller: _email,
                      onChanged: (text) {
                        _email_text = text;
                        if (text.isNotEmpty) {
                          _visible = true;
                        } else {
                          _visible = false;
                        }
                      },
                      inputFormatters: const [],
                      style: TextStyle(color: HexColor.fromHex("#343237")),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        labelStyle: TextStyle(
                            color: HexColor.fromHex("#343237"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        helperStyle: TextStyle(
                            color: HexColor.fromHex("#828282"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        hintStyle: TextStyle(
                            color: HexColor.fromHex("#828282"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        filled: false,
                        fillColor: Colors.transparent,
                        labelText: "Tell us your email",
                        hintText: "you@example.com",
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Text(
                    "By using the InspiShare application, you acknowledge and agree with our Privacy Policy",
                    style: TextStyle(
                        color: HexColor.fromHex("#7F7F7F"), fontSize: 13)),
                // const SizedBox(
                //   height: 120,
                // )
              ],
            ),
          )),
          Visibility(
              visible: _visible,
              child: GestureDetector(
                onTap: () {
                  if (_visible) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Row(
                        children: const [
                          Text("Please wait..."),
                          SizedBox(
                            width: 50,
                          ),
                          CircularProgressIndicator(),
                        ],
                      )),
                    );

                    Api.post(
                            {"email": _email_text},
                            "public/authorization/getCode/",
                            {"Content-Type": "application/json"})
                        .then((_repsonse) async {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      if (_repsonse[0] == 200) {
                        Navigator.of(context).pushNamed("/enterCode");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Oops something went wrong...")),
                        );
                      }
                    });
                  }
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 16.5,
                  color: HexColor.fromHex("#008CFF"),
                  alignment: Alignment.center,
                  child: const Text("Receive Code",
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                ),
              ))
        ],
      ),
    ));
  }
}
