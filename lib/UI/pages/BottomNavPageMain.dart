part of 'pages.dart';

class BottomNavPageMain extends StatefulWidget {
  final int selectedPage;
  BottomNavPageMain({this.selectedPage = 0});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavPageMainState();
  }
}

class BottomNavPageMainState extends State<BottomNavPageMain> {
  PageController controllerPage = PageController();
  int selectedPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerPage = PageController(initialPage: 0);
    selectedPage = widget.selectedPage;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(

            child: PageView(
              controller: controllerPage,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                HomePageMain(),
                ChatPageMain(),
                BlogPageMain(),
                FeedPageMain()
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: "FFB61E".toColor(),
        child: Center(
            child: Icon(
          FontAwesomeIcons.mapMarked,
          color: Colors.white,
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedPage,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
          controllerPage.jumpToPage(selectedPage);
        },
      ),
    );
  }
}
