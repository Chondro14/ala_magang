part of 'pages.dart';

class CartOverlayPageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CartOverlayPageMainState();
  }
}

class CartOverlayPageMainState extends State<CartOverlayPageMain> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 24),
        color: "FFB61E".toColor(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              MdiIcons.checkCircle,
              color: Colors.white,
              size: 120,
            ),
            Text(
              "Selesai!",
              style:
                  openSans24Bold700.copyWith(fontSize: 32, color: Colors.white),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Silahkan tunggu pesanan anda diantar',
                  style: openSans12Bold400.copyWith(
                      fontSize: 22, color: Colors.white),textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
    );
  }
}
