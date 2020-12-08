part of 'pages.dart';

class DetailShopPageMain extends StatefulWidget {
  final Shop shop;
  DetailShopPageMain({this.shop});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailShopPageMainState();
  }
}

class DetailShopPageMainState extends State<DetailShopPageMain> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomPadding: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,brightness: Brightness.light,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),centerTitle: true,
        title: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
            width: MediaQuery.of(context).size.width * 0.65,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cari... di warehouse ini',
                  style: openSans12Bold400.copyWith(color: Colors.black),
                ),
                Icon(
                  Icons.search,
                  color: Colors.black26,
                )
              ],
            ),
          ),
        ),
        actions: [

        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.shop.images),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.2, color: Colors.black26))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          widget.shop.nameShop,
                          style: openSans24Bold700,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: "FFB61E".toColor(),
                            size: 20,
                          ),
                          Text(
                            widget.shop.rate.toString(),
                            style: openSans20Bold700.copyWith(fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: "FFB61E".toColor(),
                              size: 18,
                            ),
                            Text(
                              widget.shop.nameShop,
                              style: openSans12Bold400.copyWith(fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          child: Text(
                            widget.shop.distance.toString() + "/km",
                            style: openSans12Bold400.copyWith(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 48),
              height: 42,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.2, color: Colors.black26))),
              child: Center(
                child: CustomTabbar(
                  titles: ["Barang", "Feedbacks"],
                  selectedIndex: selectedIndex,
                  onPressed: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
            (selectedIndex == 0)
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: List.generate(
                          widget.shop.foods.length,
                          (index) => FoodShopCard(
                                images: widget.shop.foods[index].pictureList,
                                decrement: (index) {},
                                increment: (index) {},
                                quantity: widget.shop.foods[index].quantity,
                                titles: widget.shop.foods[index].nameFoods,
                                weight: widget.shop.foods[index].weight,
                                price: widget.shop.foods[index].price,
                              )),
                    ),
                  )
                : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      children: List.generate(
                          widget.shop.reviewClass.length,
                          (index) => ReviewsCard(
                                images: widget.shop.reviewClass[index].images,
                                names: widget.shop.reviewClass[index].names,
                                descriptions:
                                    widget.shop.reviewClass[index].descriptions,
                                rating: widget.shop.reviewClass[index].rating,
                              )),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
