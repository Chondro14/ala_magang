part of 'pages.dart';

class DetailFoodPageMain extends StatefulWidget {
  final Foods foods;
  DetailFoodPageMain({this.foods});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailFoodPageMainState();
  }
}

class DetailFoodPageMainState extends State<DetailFoodPageMain> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          CircleAvatar(
              backgroundColor: Colors.black26,
              radius: 20,
              child: Center(
                  child: Icon(
                MdiIcons.bookmarkOutline,
                color: Colors.white,
              )))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.foods.pictureList),
                      fit: BoxFit.fill)),
            ),
            Container(padding: EdgeInsets.symmetric(horizontal:24,vertical:12),decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.2,color: Colors.black26))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.foods.nameFoods,
                          style: openSans20Bold700,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.house_siding_outlined,
                              color: "FFB61E".toColor(),
                            ),
                            Text(
                              widget.foods.nameShop,
                              style: openSans20Bold700.copyWith(fontSize: 13),
                            )
                          ],
                        ),
                        Text(
                          NumberFormat.currency(
                                      locale: 'id-ID',
                                      symbol: "Rp ",
                                      decimalDigits: 0)
                                  .format(widget.foods.price)
                                  .toString() +
                              "/" +
                              widget.foods.weight.toString() +
                              "gram",
                          style: openSans20Bold700.copyWith(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:12.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width:100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(radius:15,
                                  backgroundColor: "FFB61E".toColor(),
                                  child: Icon(Icons.remove, color: Colors.white),
                                ),
                                Text(widget.foods.quantity.toString(),style:openSans12Bold400.copyWith(fontSize: 14)),
                                CircleAvatar(
                                  radius:15,
                                  backgroundColor: "FFB61E".toColor(),
                                  child: Icon(Icons.add, color: Colors.white),
                                )
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),Container(child: Column(children: [CustomTabbar(titles: ["Dekripsi","Kandungan","Fun Fact"],selectedIndex: selectedIndex,onPressed: (index){
              setState(() {
                selectedIndex=index;
              });
            },)],),)
          ],
        ),
      ),
    );
  }
}
