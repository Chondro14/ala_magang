part of 'widgets.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  CustomBottomNavigationBar({this.selectedIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: GestureDetector(
                        onTap: (){
                          if(onTap!=null){
                            onTap(0);
                          }
                        },
                        child: Column(
                          children: [
                            (selectedIndex == 0)
                                ? Icon(
                                    MdiIcons.home,
                                    color: "FFB61E".toColor(),
                                  )
                                : Icon(
                                    MdiIcons.homeOutline,
                                    color: Colors.black,
                                  ),
                            Text("Home")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: GestureDetector(
                        onTap: (){
                          if(onTap!=null){
                            onTap(1);
                          }
                        },
                        child: Column(
                          children: [
                            (selectedIndex == 1)
                                ? Icon(
                              MdiIcons.chat,
                              color: "FFB61E".toColor(),
                            )
                                : Icon(
                              MdiIcons.chatOutline,
                              color: Colors.black,
                            ),
                            Text("Chat")
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: GestureDetector(
                        onTap: (){
                          if(onTap!=null){
                            onTap(2);
                          }
                        },
                        child: Column(
                          children: [
                            (selectedIndex == 2)
                                ? Icon(
                              FontAwesomeIcons.newspaper,
                              color: "FFB61E".toColor(),
                            )
                                : Icon(
                              FontAwesomeIcons.newspaper,
                              color: Colors.black,
                            ),
                            Text("Blog")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: GestureDetector(
                        onTap: (){
                          if(onTap!=null){
                            onTap(3);
                          }
                        },
                        child: Column(
                          children: [
                            (selectedIndex == 3)
                                ? Icon(
                              FontAwesomeIcons.table,
                              color: "FFB61E".toColor(),
                            )
                                : Icon(
                              FontAwesomeIcons.table,
                              color: Colors.black,
                            ),
                            Text("Feed")
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),shape: CustomAppBar(0),
    );
  }
}
class CustomAppBar extends NotchedShape {
  final double radius;

  CustomAppBar(this.radius);

  @override
  Path getOuterPath(Rect host, Rect guest) {
    if (guest == null || !host.overlaps(guest)) return Path()..addRect(host);

    // The guest's shape is a circle bounded by the guest rectangle.
    // So the guest's radius is half the guest width.
    final notchRadius = guest.width / 2.0;

    const s1 = 15.0;
    const s2 = 1.0;

    final r = notchRadius;
    final a = -1.0 * r - s2;
    final b = host.top - guest.center.dy;

    final n2 = math.sqrt(b * b * r * r * (a * a + b * b - r * r));
    final p2xA = ((a * r * r) - n2) / (a * a + b * b);
    final p2xB = ((a * r * r) + n2) / (a * a + b * b);
    final p2yA = -math.sqrt(r * r - p2xA * p2xA);
    final p2yB = -math.sqrt(r * r - p2xB * p2xB);

    final p = List<Offset>(6);

    // p0, p1, and p2 are the control points for segment A.
    p[0] = Offset(a - s1, b);
    p[1] = Offset(a, b);
    final cmp = b < 0 ? -1.0 : 1.0;
    p[2] = cmp * p2yA > cmp * p2yB ? Offset(p2xA, p2yA) : Offset(p2xB, p2yB);

    // p3, p4, and p5 are the control points for segment B, which is a mirror
    // of segment A around the y axis.
    p[3] = Offset(-1.0 * p[2].dx, p[2].dy);
    p[4] = Offset(-1.0 * p[1].dx, p[1].dy);
    p[5] = Offset(-1.0 * p[0].dx, p[0].dy);

    // translate all points back to the absolute coordinate system.
    for (var i = 0; i < p.length; i += 1) {
      p[i] += guest.center;
      //p[i] += padding;
    }

    return (radius ?? 0) > 0
        ? (Path()
      ..moveTo(host.left, host.top + radius)
      ..arcToPoint(Offset(host.left + radius, host.top),
          radius: Radius.circular(radius))
      ..lineTo(p[0].dx, p[0].dy)
      ..quadraticBezierTo(p[1].dx, p[1].dy, p[2].dx, p[2].dy)
      ..arcToPoint(
        p[3],
        radius: Radius.circular(notchRadius),
        clockwise: true,
      )
      ..quadraticBezierTo(p[4].dx, p[4].dy, p[5].dx, p[5].dy)
      ..lineTo(host.right - radius, host.top)
      ..arcToPoint(Offset(host.right, host.top + radius),
          radius: Radius.circular(radius))
      ..lineTo(host.right, host.bottom)
      ..lineTo(host.left, host.bottom)
      ..close())
        : (Path()
      ..moveTo(host.left, host.top)
      ..lineTo(p[0].dx, p[0].dy)
      ..quadraticBezierTo(p[1].dx, p[1].dy, p[2].dx, p[2].dy)
      ..arcToPoint(
        p[3],
        radius: Radius.circular(notchRadius),
        clockwise: true,
      )
      ..quadraticBezierTo(p[4].dx, p[4].dy, p[5].dx, p[5].dy)
      ..lineTo(host.right, host.top)
      ..lineTo(host.right, host.bottom)
      ..lineTo(host.left, host.bottom)
      ..close());
  }
}
