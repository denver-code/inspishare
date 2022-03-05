import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inspishare/internal/hexToColor.dart';
import 'package:inspishare/templates/TextFieldModern.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  State<CodeScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<CodeScreen> {
  final TextEditingController _email = TextEditingController();
  bool _visible = false;

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
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 45,
                    ),
                    Container(
                      width: 72,
                      height: 72,
                      padding: const EdgeInsets.only(top: 10.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9),
                          topRight: Radius.circular(9),
                          bottomLeft: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                              offset: Offset(0, 4),
                              blurRadius: 8)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: TextFormField(
                          showCursor: true,
                          cursorColor: HexColor.fromHex("#828282"),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          autofocus: true,
                          onChanged: (text) {
                            if (text.isNotEmpty) {
                              _visible = true;
                            } else {
                              _visible = false;
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: TextStyle(
                              color: HexColor.fromHex("#343237"), fontSize: 35),
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
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
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              helperStyle: TextStyle(
                                  color: HexColor.fromHex("#828282"),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              hintStyle: TextStyle(
                                  color: HexColor.fromHex("#828282"),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              filled: false,
                              fillColor: Colors.transparent,
                              // labelText: "0",
                              hintText: "0",
                              counterText: "")),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 21,
                    ),
                    Container(
                      width: 72,
                      height: 72,
                      padding: const EdgeInsets.only(top: 10.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9),
                          topRight: Radius.circular(9),
                          bottomLeft: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                              offset: Offset(0, 4),
                              blurRadius: 8)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: TextFormField(
                          showCursor: true,
                          cursorColor: HexColor.fromHex("#828282"),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          autofocus: true,
                          onChanged: (text) {
                            if (text.isNotEmpty) {
                              _visible = true;
                            } else {
                              _visible = false;
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: TextStyle(
                              color: HexColor.fromHex("#343237"), fontSize: 35),
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
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
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              helperStyle: TextStyle(
                                  color: HexColor.fromHex("#828282"),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              hintStyle: TextStyle(
                                  color: HexColor.fromHex("#828282"),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              filled: false,
                              fillColor: Colors.transparent,
                              // labelText: "0",
                              hintText: "0",
                              counterText: "")),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 21,
                    ),
                    Container(
                      width: 72,
                      height: 72,
                      padding: const EdgeInsets.only(top: 10.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9),
                          topRight: Radius.circular(9),
                          bottomLeft: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                              offset: Offset(0, 4),
                              blurRadius: 8)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: TextFormField(
                          showCursor: true,
                          cursorColor: HexColor.fromHex("#828282"),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          autofocus: true,
                          onChanged: (text) {
                            if (text.isNotEmpty) {
                              _visible = true;
                            } else {
                              _visible = false;
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: TextStyle(
                              color: HexColor.fromHex("#343237"), fontSize: 35),
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
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
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              helperStyle: TextStyle(
                                  color: HexColor.fromHex("#828282"),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              hintStyle: TextStyle(
                                  color: HexColor.fromHex("#828282"),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              filled: false,
                              fillColor: Colors.transparent,
                              // labelText: "0",
                              hintText: "0",
                              counterText: "")),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 21,
                    ),
                    Container(
                      width: 72,
                      height: 72,
                      padding: const EdgeInsets.only(top: 10.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9),
                          topRight: Radius.circular(9),
                          bottomLeft: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                              offset: Offset(0, 4),
                              blurRadius: 8)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: TextFormField(
                          showCursor: true,
                          cursorColor: HexColor.fromHex("#828282"),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          autofocus: true,
                          onChanged: (text) {
                            if (text.isNotEmpty) {
                              _visible = true;
                            } else {
                              _visible = false;
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: TextStyle(
                              color: HexColor.fromHex("#343237"), fontSize: 35),
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
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
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              helperStyle: TextStyle(
                                  color: HexColor.fromHex("#828282"),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              hintStyle: TextStyle(
                                  color: HexColor.fromHex("#828282"),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400),
                              filled: false,
                              fillColor: Colors.transparent,
                              // labelText: "0",
                              hintText: "0",
                              counterText: "")),
                    ),
                  ],
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
