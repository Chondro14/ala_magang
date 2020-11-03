part of 'pages.dart';

class RegisterProfilePageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterProfilePageMainState();
  }
}

class RegisterProfilePageMainState extends State<RegisterProfilePageMain> {
  final formKeyState = GlobalKey<FormState>();
  bool isCorrect=true;
  TextEditingController inputName=TextEditingController();
  TextEditingController inputAddress=TextEditingController();
  TextEditingController inputPhoneNumber=TextEditingController();
  TextEditingController inputEmail=TextEditingController();
  FocusNode focusName=FocusNode();
  FocusNode focusAddress=FocusNode();
  FocusNode focusPhoneNumber=FocusNode();
  FocusNode focusEmail=FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusName=FocusNode();
  }
  @override
  Widget build(BuildContext context) {
    return GeneralPageMain(
      onBackPressed: () {
        Get.back();
      },
      child: Container(
        height: MediaQuery.of(context).size.height*0.78,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              key: formKeyState,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, top: 12),
                      child: Text(
                        "Your Profile",
                        style: openSans24Bold700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48,vertical: 12),
                    child: Container(
                      width: double.infinity,
                      height: 60,

                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.3), width: 1))),
                      child: TextFormField(
                        controller: inputName,
                        focusNode: focusName,
                        validator: (value){},
                        onFieldSubmitted: (value){},
                        style: openSans20Bold700.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w200),
                        decoration: InputDecoration(
                          hintText: "Your name",
                          labelText: "Name",
                          labelStyle: openSans12Bold400,
                          hintStyle: openSans20Bold700.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w200),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48,vertical: 12),
                    child: Container(
                      width: double.infinity,
                      height: 60,

                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.3), width: 1))),
                      child: TextFormField(
                        controller: inputAddress,
                        focusNode: focusAddress,
                        style: openSans20Bold700.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w200),
                        decoration: InputDecoration(
                            hintText: "Your Address",
                            labelText: "Address",
                            labelStyle: openSans12Bold400,
                            hintStyle: openSans20Bold700.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w200),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48,vertical: 12),
                    child: Container(
                      width: double.infinity,
                      height: 60,

                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.3), width: 1))),
                      child: TextFormField(
                        controller: inputPhoneNumber,
                        focusNode: focusPhoneNumber,
                        style: openSans20Bold700.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w200),
                        decoration: InputDecoration(
                            hintText: "",
                            labelText: "Phonenumber",
                            labelStyle: openSans12Bold400,
                            hintStyle: openSans20Bold700.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w200),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48,vertical: 12),
                    child: Container(
                      width: double.infinity,
                      height: 60,

                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.3), width: 1))),
                      child: TextFormField(
                        controller: inputEmail,
                        focusNode: focusEmail,
                        style: openSans20Bold700.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w200),
                        decoration: InputDecoration(
                            hintText: "@mail.com",
                            labelText: "Email",
                            labelStyle: openSans12Bold400,
                            hintStyle: openSans20Bold700.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w200),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ), Column(
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
                      if (formKeyState.currentState.validate()) {
                        if (isCorrect == true) {
                          Get.to(BottomNavPageMain());
                        } else {
                          Get.snackbar("", "",
                              backgroundColor: Colors.red,
                              titleText: Text(
                                "Error",
                                style:
                                openSans20Bold700.copyWith(color: Colors.white),
                              ),
                              messageText: Text(
                                "Please input your valid profile",
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
