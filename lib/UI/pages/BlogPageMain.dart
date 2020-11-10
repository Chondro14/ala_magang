part of 'pages.dart';

class BlogPageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BlogPageMainState();
  }
}

class BlogPageMainState extends State<BlogPageMain> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Blog",
          style: openSans20Bold700.copyWith(color: "FFB61E".toColor()),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: "FFB61E".toColor(),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ))),
            CustomTabbar(
                onPressed: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                selectedIndex: selectedIndex,
                titles: ["Top", "Health", "Diet", "Kids", "Culinary"])
          ],
        ),
      ),
    );
  }
}
