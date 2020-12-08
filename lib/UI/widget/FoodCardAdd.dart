part of 'widgets.dart';

class FoodCardAdd extends StatelessWidget {
  final String imagePath;
  final String title;
  final int price;
  final int discount;
  final int weight;
  final Function onPressed;
  final String shop;
  final Function addCart;
  FoodCardAdd(
      {this.price,
      this.title,
      this.shop,
      this.imagePath,
      this.weight,
      this.onPressed,
      this.discount,
      this.addCart});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.48,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(3, 5),
                    spreadRadius: 2)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.48,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4)),
                  image: DecorationImage(
                      image: NetworkImage(imagePath), fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 6),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: "FFB61E".toColor(),
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: 25,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          shop,
                          style: openSans20Bold700.copyWith(
                              fontSize: 10, color: Colors.white),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 10,
                        )
                      ])),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SizedBox(
                    width: 100,
                    child: Text(
                      title,
                      style: openSans12Bold400.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  NumberFormat.currency(
                              locale: 'id-ID', symbol: "Rp", decimalDigits: 0)
                          .format(price) +
                      "/" +
                      weight.toString() +
                      " gram",
                  style: openSans12Bold400.copyWith(fontSize: 10),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(right: 8.0),
                  width: MediaQuery.of(context).size.width * 0.48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: addCart,
                          child: CircleAvatar(
                            child: Icon(
                              Icons.add_shopping_cart_rounded,
                              size: 20,
                              color: Colors.black,
                            ),
                            backgroundColor: "FFB61E".toColor(),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
