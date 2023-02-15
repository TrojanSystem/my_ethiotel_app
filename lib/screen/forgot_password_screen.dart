import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/button.dart';
import 'package:my_ethiotel_app/widgets/splash_screen_widgets.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final forgottenPassword = TextEditingController();
  final forgottenPasswordNode = FocusNode();
  final _forgottenPasswordKey = GlobalKey<FormState>();

  @override
  void dispose() {
    forgottenPassword.dispose();
    forgottenPasswordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: buildBanner(),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/47.png'),
                    )),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 38.0),
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Please confirm your mobile number',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Form(
                        key: _forgottenPasswordKey,
                        child: Container(
                          margin: const EdgeInsets.only(left: 16, right: 16),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.black),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("+251"),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: forgottenPassword,
                                    focusNode: forgottenPasswordNode,
                                    textInputAction: TextInputAction.go,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      hintText: "Mobile Number",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Button(
                          buttonColor: Colors.blue,
                          buttonLabel: "Reset",
                          buttonFunction: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
