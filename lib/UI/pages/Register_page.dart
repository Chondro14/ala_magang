part of 'pages.dart';

class RegisterPageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterPageMainState();
  }
}

class RegisterPageMainState extends State<RegisterPageMain> {
  List<ListPhoneNumber> listPhone = [
    ListPhoneNumber(name: "+62 ID", value: "+62"),
    ListPhoneNumber(name: "+81 JPN", value: "+81"),
    ListPhoneNumber(name: "+60 MY", value: "+60")
  ];
  List<DropdownMenuItem<ListPhoneNumber>> dropMenuList;
  ListPhoneNumber phoneNumber;
  bool isCorrect = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController inputPhoneNumber = TextEditingController();
  @override
  void initState() {
    super.initState();
    dropMenuList = buildDropDownMenu(listPhone);
    phoneNumber = listPhone[0];
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

  bool emptyMoment(String value) {
    if (value.isNotEmpty) {
      setState(() {
        isCorrect = true;
        return true;
      });
    } else {
      setState(() {
        return false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPageMain(
      child: Container(
        height: MediaQuery.of(context).size.height*0.78,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48.0, top: 12),
                    child: Text(
                      "Enter Phone Number",
                      style: openSans20Bold700.copyWith(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black.withOpacity(0.4), width: 2))),
                      child: Form(
                        key: formKey,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<ListPhoneNumber>(
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
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: TextFormField(
                                style: openSans12Bold400.copyWith(fontSize: 16),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                                keyboardType: TextInputType.number,
                                controller: inputPhoneNumber,
                                validator: (value) {
                                  setState(() {
                                    if (value.isNotEmpty && value.length > 10) {
                                      isCorrect = true;
                                    } else if (value.length < 10) {
                                      isCorrect = false;
                                    }

                                    return null;
                                  });
                                },
                              ),
                            ),
                            isCorrect
                                ? Icon(
                                    MdiIcons.checkBold,
                                    color: Colors.green[200],
                                  )
                                : Icon(
                                    MdiIcons.close,
                                    color: Colors.red,
                                  )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By Continuing, I confirm  that I have read & agree to the",
                    style: openSans20Bold700.copyWith(
                        fontSize: 10, fontWeight: FontWeight.w400)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Terms Condition",
                      style: openSans20Bold700.copyWith(fontSize: 10),
                    ),
                    Text(" and ",
                        style: openSans20Bold700.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w400)),
                    Text(
                      "Privacy Policy",
                      style: openSans20Bold700.copyWith(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2,
                  height: 50,
                  child: InkWell(
                    onTap:  () {
                      if (formKey.currentState.validate()) {
                        if (isCorrect == true) {
                          Get.to(VerificationPageMain(phoneNumber: phoneNumber.value+inputPhoneNumber.text,));
                        } else {
                          Get.snackbar("", "",
                              backgroundColor: Colors.red,
                              titleText: Text(
                                "Error",
                                style:
                                openSans20Bold700.copyWith(color: Colors.white),
                              ),
                              messageText: Text(
                                "Please input your valid number",
                                style:
                                openSans12Bold400.copyWith(color: Colors.white),
                              ),
                              icon: Icon(
                                MdiIcons.closeCircleOutline,
                                color: Colors.white,
                              ));
                        }
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Container(decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          gradient: LinearGradient(
                              colors: ["FF9900".toColor(), "FFCF69".toColor()])),
                        child: Center(
                          child: Text("Continue",style: openSans20Bold700.copyWith(color: Colors.white,fontSize: 14),),
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

class ListPhoneNumber {
  String value;
  String name;
  ListPhoneNumber({this.name, this.value});
}
