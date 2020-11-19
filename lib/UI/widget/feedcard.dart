part of 'widgets.dart';

class FeedCard extends StatelessWidget {
  final String images;
  final String descriptions;
  final String imagesProfile;
  final String nameChef;
  final DateTime timesAgo;
  FeedCard(
      {this.images,
      this.descriptions,
      this.imagesProfile,
      this.nameChef,
      this.timesAgo});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.black26,spreadRadius: 4,offset: Offset(0,3
      ))]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(imagesProfile),

                      radius: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameChef,
                            style: openSans20Bold700.copyWith(fontSize: 16),
                          ),
                          Text(ago
                              .format(
                                  DateTime.now().subtract(Duration(minutes: 15)))
                              .toString())
                        ],
                      ),
                    )
                  ],
                ),
                IconButton(icon: Icon(MdiIcons.dotsVertical,),)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(images), fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              descriptions,
              style: openSans12Bold400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: "FFB61E".toColor(),
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.chat_bubble_outline_rounded,color: "FFB61E".toColor(),),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  MdiIcons.share,
                  color: "FFB61E".toColor(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
