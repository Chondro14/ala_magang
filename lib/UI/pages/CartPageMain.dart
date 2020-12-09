part of 'pages.dart';

class CartPageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CartPageMainState();
  }
}

class CartPageMainState extends State<CartPageMain> {
  List<Foods> food = foodsListData;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Your Cart',
          style: openSans20Bold700.copyWith(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 96,
              height: MediaQuery.of(context).size.height * 0.55,
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ListView(
                children: List.generate(
                    food.length,
                    (index) => FoodCart(
                          images: food[index].pictureList,
                          titles: food[index].nameFoods,
                          quantity: food[index].quantity,
                          weight: food[index].weight,
                          deleteCart: () {},
                          price: food[index].price,
                          increment: (index) {},
                          decrement: (index) {},
                          onPressed: () {},
                        )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
              padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border:
                  Border(top: BorderSide(width: 1, color: Colors.black26),bottom: BorderSide(width: 1, color: Colors.black26),left: BorderSide(width: 1, color: Colors.black26),right: BorderSide(width: 1, color: Colors.black26)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Column(
                children: [Text("Pembayaran",style: openSans20Bold700.copyWith(color: Colors.black),),],
              ),
            )
          ],
        ),
      ),
    );
  }
}
