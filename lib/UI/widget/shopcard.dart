part of 'widgets.dart';

class ShopCard extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;
  final String nameShop;
  final int lengthProduct;
  final String locationShop;
  final double distance;
  final Function onPressed;
  ShopCard(
      {this.distance,
      this.nameShop,
      this.imagePath1,
      this.imagePath2,
      this.imagePath3,
      this.lengthProduct,
      this.locationShop,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),offset:Offset(3,5),spreadRadius: 2)]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imagePath1),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(imagePath2),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(imagePath3),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.32)),
                              ),
                            ),
                            Text(lengthProduct.toString(),style:openSans12Bold400.copyWith(fontSize: 10,color: Colors.white) ,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Text(
                nameShop,
                style: openSans20Bold700.copyWith(fontSize: 14),
              ),
              Text(
                locationShop,
                style: openSans12Bold400.copyWith(
                  fontSize: 12,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_pin),
                  Text(
                    distance.toString()+" km",
                    style: openSans12Bold400.copyWith(fontSize: 10),
                  )
                ],
              )
            ],
          )),
    );
  }
}
