part of "widgets.dart";

class FoodCart extends StatelessWidget{
  final String images;
  final String titles;
  final int price;
  final int weight;
  final int quantity;
  final Function(int quantity) increment;
  final Function(int quantity) decrement;
  final Function onPressed;
  final Function deleteCart;
  FoodCart({this.images,this.deleteCart,this.onPressed,this.price,this.weight,this.quantity,this.titles,this.decrement,this.increment});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      height: MediaQuery.of(context).size.height * 0.25,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: NetworkImage(images))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 200,
                  child: Text(
                    titles,
                    style: openSans20Bold700.copyWith(fontSize: 18),overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 200,
                  child: Text(NumberFormat.currency(
                      locale: 'id-ID', symbol: "Rp", decimalDigits: 0)
                      .format(price) +
                      "/" +
                      weight.toString() +
                      " gram",style: openSans12Bold400.copyWith(fontSize:13),),
                ),
                Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: "FFB61E".toColor(),
                            child:
                            Icon(Icons.remove, color: Colors.white),
                          ),
                        ),
                        Text(quantity.toString(),
                            style: openSans12Bold400.copyWith(
                                fontSize: 14)),
                        GestureDetector(
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: "FFB61E".toColor(),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Container(
            width: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: deleteCart,
                      child: Icon(
                        Icons.delete,
                        size: 20,
                        color: Colors.red,
                      ))
                ],
              ))
        ],
      ),
    );
  }
}