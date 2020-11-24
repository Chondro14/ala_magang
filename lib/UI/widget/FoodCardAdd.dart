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
  FoodCardAdd({this.price,this.title,this.shop,this.imagePath,this.weight,this.onPressed,this.discount,this.addCart});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(3, 5),
            spreadRadius: 2)
      ]),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Container(decoration: BoxDecoration(image: DecorationImage()),)],
      ),
    );
  }
}
