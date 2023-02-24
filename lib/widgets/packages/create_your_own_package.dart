import 'package:flutter/material.dart';

class CreateYourOwnPackage extends StatefulWidget {
  const CreateYourOwnPackage({Key? key}) : super(key: key);

  @override
  State<CreateYourOwnPackage> createState() => _CreateYourOwnPackageState();
}

class _CreateYourOwnPackageState extends State<CreateYourOwnPackage> {
  String gender = '';
  String dropdownvalue = 'MB';
  double value = 0.0;

  // List of items in our dropdown menu
  var items = [
    'MB',
    'GB',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  color: Colors.grey,
                  child: const Center(
                    child: Text(
                      'Create Your Own Package',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ),
              buildRadioButton(context),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 60,
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Select validity first'),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                          )
                        ],
                      ),
                    ),
                    buildDataPlan()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildDataPlan() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              'Data',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SliderTheme(
                        data: const SliderThemeData(
                          trackHeight: 15,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15,
                          ),
                          thumbColor: Colors.white,
                        ),
                        child: Slider(
                          value: value,
                          min: 0,
                          max: 1024,
                          onChanged: (sliderValue) {
                            setState(() {
                              value = sliderValue;
                            });
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '0',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '1024',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(builder: (context)=>SizedBox(
                      width: 80,
                      height: 50,
                      child: TextFormField(
                        initialValue: value.toString(),
                        decoration: const InputDecoration(
                          focusColor: Colors.blue,
                          hintText: 'Insert',
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                        onSaved: (enteredValue) {},
                      ),
                    ),),

                    SizedBox(
                      width: 80,
                      height: 50,
                      child: DropdownButton(
                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Expanded buildRadioButton(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: RadioListTile(
                title: const Text("Self"),
                value: "Self",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              )),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: RadioListTile(
                title: const Text("Gift"),
                value: "Gift",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ))
        ],
      ),
    );
  }
}
