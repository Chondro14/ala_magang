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
  String dropdown = "None";
  String dropdownpay = "Pembayaran di Tempat";
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
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(width: 1, color: Colors.black26),
                      bottom: BorderSide(width: 1, color: Colors.black26),
                      left: BorderSide(width: 1, color: Colors.black26),
                      right: BorderSide(width: 1, color: Colors.black26)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pembayaran",
                    style: openSans20Bold700.copyWith(color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        dropdown,
                        style: openSans12Bold400.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      DropdownButton<String>(
                        value: dropdown,
                        icon: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.black,
                        ),
                        style: openSans12Bold400.copyWith(
                            fontSize: 14, color: Colors.black),
                        items: <String>[
                          "None",
                          "Promo 50%",
                          "Promo cashback 10%",
                        ].map<DropdownMenuItem<String>>((String e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          );
                        }).toList(),
                        onChanged: (String newvalue) {
                          setState(() {
                            dropdown = newvalue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Ongkos Kirim",
                        style: openSans12Bold400.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: "id-ID", decimalDigits: 0, symbol: "Rp")
                            .format(20000),
                        style: openSans12Bold400.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),SizedBox(height: 20,),
                  Text(
                    'Metode Pembayaran :',
                    style: openSans12Bold400.copyWith(
                      fontSize: 14,
                    ),
                  ),

                  DropdownButton<String>(
                    value: dropdownpay,
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.black,
                    ),
                    style: openSans12Bold400.copyWith(
                        fontSize: 14, color: Colors.black),
                    items: <String>[
                      "Pembayaran di Tempat",
                      "Pembayaran via GoPay",
                      "Pembayaran via OVOpay",
                      "Pembayaran via OVOPoints"
                    ].map<DropdownMenuItem<String>>((String e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                    onChanged: (String newvalue) {
                      setState(() {
                        dropdownpay = newvalue;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.3,
                        height: MediaQuery.of(context).size.height*0.08,
                        child: RaisedButton(
                          onPressed: () {},
                          color: "FFB61E".toColor(),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Text(
                            "Checkout",
                            style: openSans20Bold700.copyWith(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
