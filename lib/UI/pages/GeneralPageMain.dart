part of 'pages.dart';

class GeneralPageMain extends StatelessWidget {
  final Widget child;
  final Function onBackPressed;
  final Color backColors;
  GeneralPageMain({this.child, this.onBackPressed, this.backColors});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.white,
        ),
        SafeArea(
          child: Container(
            color: backColors ?? Colors.white,
          ),
        ),
        SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    width: double.infinity,
                    height: 100,
                    color: Colors.white,
                    child: Row(
                      children: [
                        onBackPressed != null
                            ? GestureDetector(
                                onTap: onBackPressed,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  margin: EdgeInsets.only(right: 26),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/back_arrow.png'))),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  )
                ],
              ),

              child ?? SizedBox()
            ],
          ),
        )
      ]),
    );
  }
}
