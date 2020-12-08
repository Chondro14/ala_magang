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
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: "FFB61E".toColor(),
        icon: Icon(
          Icons.add_shopping_cart_outlined,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        label: Text('Masukkan ke keranjang', style: openSans12Bold400),
      ),
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
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.foods.pictureList),
                      fit: BoxFit.fill)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.2, color: Colors.black26))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
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
                    padding: const EdgeInsets.only(top: 12.0),
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
                              style: openSans20Bold700.copyWith(fontSize: 15),
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
                          style: openSans20Bold700.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: "FFB61E".toColor(),
                                  child:
                                      Icon(Icons.remove, color: Colors.white),
                                ),
                                Text(widget.foods.quantity.toString(),
                                    style: openSans12Bold400.copyWith(
                                        fontSize: 16)),
                                CircleAvatar(
                                  radius: 15,
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
            ),
            Container(
              child: Column(
                children: [
                  CustomTabbar(
                    titles: ["Dekripsi", "Kandungan", "Fun Fact"],
                    selectedIndex: selectedIndex,
                    onPressed: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  (selectedIndex == 0)
                      ? Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1.2, color: Colors.black26))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Diskripsi',
                                style: openSans20Bold700.copyWith(fontSize: 16),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(widget.foods.description,
                                    style: openSans12Bold400),
                              )
                            ],
                          ),
                        )
                      : (selectedIndex == 1)
                          ? Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1.2, color: Colors.black26))),
                              child: Column(
                                children: [
                                  Text('Kandungan',
                                      style: openSans20Bold700.copyWith(
                                          fontSize: 16)),
                                  Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: List.generate(widget.foods.contains.length, (index) => Text(widget.foods.contains[index])),)
                                  /*SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: ListP

                                    ListView.builder(
                                      itemCount: widget.foods.contains.length,
                                      itemBuilder: (_, index) {
                                        return Text(
                                            widget.foods.contains[index]);
                                      },
                                    ),
                                  )*/
                                ],
                              ))
                          : Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1.2, color: Colors.black26))),
                            )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: SizedBox(child: Text('Saran yang terkait',style:openSans20Bold700.copyWith(fontSize:16)),),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: BlocBuilder<FoodCubit, FoodState>(
                  builder: (_, state) {
                    BlocProvider.of<FoodCubit>(context).getFoods();
                    if(state is FoodLoadSucces){
                      return ListView(scrollDirection: Axis.horizontal,children: state.foods.map((e) => FoodCardAdd(imagePath: e.pictureList,shop: e.nameShop,title: e.nameFoods,price: e.price,weight:e.weight,onPressed: (){Get.to(DetailFoodPageMain(foods:e));},)).toList());
                    }
                  },
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: SizedBox(child: Text('Bahan Masakan untuk',style:openSans20Bold700.copyWith(fontSize:16)),),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child:

                       ListView(scrollDirection: Axis.horizontal,children: List.generate(widget.foods.menuCook.length, (index) => MenuCookCard(title: widget.foods.menuCook[index].titleCook,imagePath: widget.foods.menuCook[index].imagesCook,onPressed: (){Get.to(DetailMenuFoodPageMain(cookFood:widget.foods.menuCook[index] ,));},)),)
                    ),
            SizedBox(height: 60,)
          ],
        ),
      ),
    );
  }
}
