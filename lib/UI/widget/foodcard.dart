part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int price;
  final int discount;
  final int weight;
  final Function onPressed;
  FoodCard(
      {this.title, this.imagePath, this.price, this.discount, this.weight,this.onPressed});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap:onPressed ,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,

            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      image: DecorationImage(
                          image: NetworkImage(imagePath), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4),
                  child: SizedBox(

                    child: Text(
                      title,
                      style: openSans20Bold700.copyWith(fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4),
                  child: Text(
                    NumberFormat.currency(
                                locale: 'id-ID', symbol: "Rp", decimalDigits: 0)
                            .format(price) +
                        "/" +
                        weight.toString() +
                        " gram",
                    style: openSans20Bold700.copyWith(fontSize: 12),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'View All store >',
                      style: openSans12Bold400,
                    ))
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(105, -10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.bookmark_rounded,
                  color: "FFB61E".toColor(),
                  size: 38,
                ),
                Text(
                  discount.toString()+"%",
                  style: openSans12Bold400.copyWith(fontSize: 10),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
