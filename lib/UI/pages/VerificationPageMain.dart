part of 'pages.dart';

class VerificationPageMain extends StatefulWidget {
  final String phoneNumber;
  VerificationPageMain({this.phoneNumber});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VerificationPageMainState(getPhoneNumber: phoneNumber);
  }
}

class VerificationPageMainState extends State<VerificationPageMain> {
  List<ListPhoneNumber> listPhone = [
    ListPhoneNumber(name: "+62 ID", value: "+62"),
    ListPhoneNumber(name: "+81 JPN", value: "+81"),
    ListPhoneNumber(name: "+60 MY", value: "+60")
  ];
  String getPhoneNumber;
  VerificationPageMainState({this.getPhoneNumber});
  List<DropdownMenuItem<ListPhoneNumber>> dropMenuList;
  ListPhoneNumber phoneNumber;
  bool isEdited = false;
  FocusNode focusNode1=FocusNode();
  FocusNode focusNode2=FocusNode();
  FocusNode focusNode3=FocusNode();
  FocusNode focusNode4=FocusNode();
  FocusNode focusNode5=FocusNode();
  FocusNode focusNode6=FocusNode();
  final formKey = GlobalKey<FormState>();
  TextEditingController inputPhoneNumber = TextEditingController();
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  TextEditingController code5 = TextEditingController();
  TextEditingController code6 = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropMenuList = buildDropDownMenu(listPhone);
    phoneNumber = listPhone[0];
    focusNode1=FocusNode();
  }

  List<DropdownMenuItem<ListPhoneNumber>> buildDropDownMenu(List listItems) {
    List<DropdownMenuItem<ListPhoneNumber>> items = List();
    for (ListPhoneNumber listPhoneNumber in listItems) {
      items.add(DropdownMenuItem(
        child: Text(
          listPhoneNumber.name,
          style: openSans12Bold400.copyWith(fontSize: 16),
        ),
        value: listPhoneNumber,
      ));
    }
    return items;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    focusNode5.dispose();
    focusNode6.dispose();
    code1.dispose();
    code2.dispose();
    code3.dispose();
    code4.dispose();
    code5.dispose();
    code6.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPageMain(
      onBackPressed: () {
        Get.back();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.78,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 12),
                    child: Text(
                      "OTP Verification",
                      style: openSans20Bold700.copyWith(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 12),
                    child: Text(
                      "Enter the 4 digit verification PhoneNumber",
                      style: openSans20Bold700.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black.withOpacity(0.4), width: 2))),
                      child: Form(
                        key: formKey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            isEdited
                                ? Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        child: DropdownButtonHideUnderline(
                                          child:
                                              DropdownButton<ListPhoneNumber>(
                                            elevation: 0,
                                            value: phoneNumber,
                                            items: dropMenuList,
                                            onChanged: (value) {
                                              setState(() {
                                                phoneNumber = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.5,
                                        child: TextFormField(
                                          style: openSans12Bold400.copyWith(
                                              fontSize: 16),
                                          decoration: InputDecoration(
                                              hintText: getPhoneNumber,
                                              border: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none),
                                          keyboardType: TextInputType.number,
                                          controller: inputPhoneNumber,
                                          validator: (value) {
                                            setState(() {
                                              if (value.isNotEmpty &&
                                                  value.length > 10) {
                                              } else if (value.length < 10) {}

                                              return null;
                                            });
                                          },
                                        ),
                                      )
                                    ],
                                  )
                                : Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Your PhoneNumber : " +
                                              getPhoneNumber,
                                          style: openSans12Bold400.copyWith(
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                  ),
                            isEdited
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (formKey.currentState.validate()) {
                                          if (isEdited == true) {
                                            isEdited = false;
                                            getPhoneNumber = phoneNumber.value +
                                                inputPhoneNumber.text;
                                          }
                                        }
                                      });
                                    },
                                    child: Text("Done",
                                      style: openSans12Bold400.copyWith(
                                          fontSize: 14,fontWeight: FontWeight.w800),),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        isEdited = true;
                                      });
                                    },
                                    child: Text('Edit',
                                      style: openSans12Bold400.copyWith(
                                          fontSize: 14,fontWeight: FontWeight.w800)),
                                  )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 75,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          focusNode: focusNode1,
                          onSubmitted: (value){
                            if(value.isNotEmpty){
                              focusNode2.requestFocus();
                            }
                          },
                          controller: code1,
                          textAlign: TextAlign.center,
                          style: openSans24Bold700,
                        )),
                    Text("-"),
                    SizedBox(
                        width: 75,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          focusNode: focusNode2,
                          onSubmitted: (value){
                            if(value.isNotEmpty){
                              focusNode3.requestFocus();
                            }
                          },
                          controller: code2,
                          textAlign: TextAlign.center,
                          style: openSans24Bold700,
                        )),
                    Text("-"),
                    SizedBox(
                        width: 75,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          focusNode: focusNode3,
                          onSubmitted: (value){
                            if(value.isNotEmpty){
                              focusNode4.requestFocus();
                            }
                          },
                          controller: code3,
                          textAlign: TextAlign.center,
                          style: openSans24Bold700,
                        )),
                    Text("-"),
                    SizedBox(
                        width: 75,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          focusNode: focusNode4,
                          controller: code4,
                          textAlign: TextAlign.center,
                          style: openSans24Bold700,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Not receiving the message? Tap "),
                      InkWell(
                        child: Text(
                          "here",
                          style: openSans20Bold700.copyWith(fontSize: 12),
                        ),
                      ),
                      Text("to Start call")
                    ],
                  ),
                ),
                Center(child: Text("verification"))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Resend code in '), Text('02:00')],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  child: InkWell(
                    onTap: () {Get.to(RegisterProfilePageMain());},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(colors: [
                              "FF9900".toColor(),
                              "FFCF69".toColor()
                            ])),
                        child: Center(
                          child: Text(
                            "Submit",
                            style: openSans20Bold700.copyWith(
                                color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
