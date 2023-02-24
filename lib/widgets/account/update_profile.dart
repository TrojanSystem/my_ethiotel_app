import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/button.dart';

import '../widget_collection.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final phoneNumber = TextEditingController();
  final phoneNumberNode = FocusNode();

  @override
  void dispose() {
    phoneNumber.dispose();
    phoneNumberNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext contextUp) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(contextUp).size.height,
          child: Column(
            children: [
              buildScreensForSubScreenTitle(title: 'Update Profile',context: contextUp),

              const SizedBox(
                height: 20,
              ),
              buildUpdateProfile(
                  title: 'Ethio Number', initialValue: "0912654975"),
              const SizedBox(
                height: 10,
              ),
              buildUpdateProfile(
                  title: 'First Name',
                  initialValue: "Surafel",
                  hintText: "Enter first name"),
              const SizedBox(
                height: 10,
              ),
              buildUpdateProfile(
                  hintText: "Enter last name",
                  title: 'Last Name',
                  initialValue: " Terefe"),
              const SizedBox(
                height: 10,
              ),
              buildUpdateProfile(
                  hintText: "Enter email address here",
                  title: 'Email Address',
                  initialValue: "Suretion747@gmail.com"),
              const SizedBox(
                height: 10,
              ),
              buildUpdateProfile(
                  hintText: 'Enter address here',
                  title: 'Address',
                  initialValue: "Yerer, Addis Ababa"),
              const SizedBox(
                height: 10,
              ),
              Button(
                  buttonColor: Colors.blue,
                  buttonLabel: "Save",
                  buttonFunction: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Container buildUpdateProfile({title, initialValue, hintText}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: initialValue,

                    focusNode: phoneNumberNode,
                    textInputAction: TextInputAction.next,
                    // onEditingComplete: () =>
                    //     FocusScope.of(context).requestFocus(passwordNode),
                    keyboardType: TextInputType.number,
                    decoration:  InputDecoration(
                      hintText: hintText,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
