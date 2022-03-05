import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inspishare/internal/hexToColor.dart';
import 'package:inspishare/internal/shared_storage.dart';
import 'package:inspishare/internal/verificationCodeInput.dart';
import 'package:inspishare/templates/TextFieldModern.dart';

import '../internal/httpApi.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  State<CodeScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<CodeScreen> {
  final TextEditingController _email = TextEditingController();
  bool _visible = false;
  bool _onEditing = true;
  String _code = "";

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
              child:
                  const Text("Authorize: Code", style: TextStyle(fontSize: 15)),
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
                Text("Enter code",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: HexColor.fromHex("#343237"))),
                const SizedBox(
                  height: 15,
                ),
                Text("Enter the code that you received in the mail to log in",
                    style: TextStyle(
                        color: HexColor.fromHex("#7F7F7F"), fontSize: 13)),
                const SizedBox(
                  height: 15,
                ),
                VerificationCode(
                  keyboardType: TextInputType.number,
                  length: 4,
                  autofocus: false,
                  onCompleted: (String value) async {
                    print(value);
                    print(value.length);
                    if (value.length == 4) {
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
                          {
                            "email":
                                await StorageApi().getStringValuesSF("email"),
                            "code": int.parse(value)
                          },
                          "public/authorization/getCode/check",
                          {
                            "Content-Type": "application/json"
                          }).then((_repsonse) async {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        if (_repsonse[0] == 200) {
                          Navigator.of(context).pushNamed("/home");
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Code not valid...")),
                          );
                        }
                      });
                    }
                    setState(() {
                      _code = value;
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 21,
                ),
              ],
            ),
          )),
        ],
      ),
    ));
  }
}
