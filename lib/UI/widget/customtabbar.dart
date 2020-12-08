part of "widgets.dart";

class CustomTabbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onPressed;
  final List<String> titles;
  CustomTabbar(
      {@required this.onPressed,
       this.selectedIndex=0,
      @required this.titles});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 48),
              height: 2,
              color: "F2F2F2".toColor(),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: titles
                    .map(
                      (e) => Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (onPressed != null) {
                                  onPressed(titles.indexOf(e));
                                }
                              },
                              child: Text(e,
                                  style: (titles.indexOf(e) == selectedIndex)
                                      ? openSans20Bold700.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )
                                      : openSans20Bold700.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width*0.1,
                                height: 2,
                                margin: EdgeInsets.only(top: 13),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: (titles.indexOf(e) == selectedIndex)
                                      ? "FFB61E".toColor()
                                      : Colors.transparent,
                                ))
                          ]),
                    )
                    .toList(),
              ),
            )
          ],
        ));
  }
}
