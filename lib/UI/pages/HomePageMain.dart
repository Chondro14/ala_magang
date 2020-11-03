part of 'pages.dart';

class HomePageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageMainState();
  }
}

class HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.dehaze_rounded,
            color: "FFB61E".toColor(),
          ),
        ),
        title: Text(
          "ALA",
          style: openSans20Bold700.copyWith(
              color: "FFB61E".toColor(),
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.notifications,
              color: "FFB61E".toColor(),
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Text(
                        "Home",
                        style: openSans20Bold700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: defaultMargin, top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_pin, color: "FF5126".toColor()),
                          Text(
                            "Your Location : ",
                            style: openSans12Bold400.copyWith(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Yogyakarta",
                            style: openSans12Bold400.copyWith(
                              fontSize: 14,
                              color: "FFB61E".toColor(),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultMargin, vertical: 12),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Cari",
                            suffixIcon: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.search,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        style: openSans20Bold700.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w200),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: defaultMargin, top: 12),
                      child: Text("Today's Promo",
                          style: openSans20Bold700.copyWith(fontSize: 18)),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: promoListData
                              .map((e) => PromoCard(
                                  title: e.title, imagePath: e.picturePath))
                              .toList(),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: defaultMargin, top: 12),
                      child: Text(
                        "Category",
                        style: openSans20Bold700.copyWith(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: defaultMargin, top: 12),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: categoriesListData
                              .map((e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0),
                                    child: CategoriesFoodCard(
                                      title: e.title,
                                      imagePath: e.imagePath,
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),Padding(
                      padding: EdgeInsets.only(left: defaultMargin, top: 12),
                      child: Text(
                        "Hot deal's",
                        style: openSans20Bold700.copyWith(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only( top: 12),
                      child: SizedBox(
                          height: 175,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: foodsListData
                                  .map((e) => Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                                    child: FoodCard(
                                          title: e.nameFoods,
                                          price: e.price,
                                          discount: e.discount,
                                          imagePath: e.pictureList,
                                          weight: e.weight,
                                        ),
                                  ))
                                  .toList())),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: defaultMargin, top: 12,bottom: 12),
                      child: Text(
                        "Popular Store's",
                        style: openSans20Bold700.copyWith(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only( top: 12,bottom: 12),
                      child: SizedBox(
                          height: 200,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: shopListData
                                  .map((e) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal:16.0),
                                child: ShopCard(
                                  nameShop: e.nameShop,
                                  imagePath1: e.foods[0].pictureList,
                                  imagePath2: e.foods[1].pictureList,
                                  imagePath3: e.foods[2].pictureList,
                                  distance: e.distance,
                                  lengthProduct: e.foods.length,
                                  locationShop: e.locationShop,

                                ),
                              ))
                                  .toList())),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
