part of 'pages.dart';

class FeedPageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FeedPageMainState();
  }
}

class FeedPageMainState extends State<FeedPageMain> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.white,title: Text('Feeds',style: openSans20Bold700.copyWith(color: Colors.black),),actions: [IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications,
          color: "FFB61E".toColor(),
        ),
      )],),
        body: Container(
            child: ListView(
      children: [
        FeedCard(
          images: "https://i.ytimg.com/vi/e1xrl5Kct5E/maxresdefault.jpg",
          imagesProfile:
              "https://img.okezone.com/content/2019/11/26/612/2134618/kesal-dengan-kelakuan-youtuber-penyembah-ad-sense-chef-arnold-poernomo-norak-qjkwy3ZLWF.jpg",
          nameChef: "Arnoeld Poernomo",
          descriptions: '',
        )
      ],
    )));
  }
}
