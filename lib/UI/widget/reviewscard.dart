part of 'widgets.dart';

class ReviewsCard extends StatelessWidget {
  final String images;
  final String names;
  final String descriptions;
  final double rating;
  ReviewsCard({this.descriptions, this.rating, this.images, this.names});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(images),
                radius: 30,
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    names,
                    style: openSans20Bold700.copyWith(fontSize: 16),
                    overflow: TextOverflow.ellipsis,
                  ))
            ],
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: RatingBar(
                rating: rating,
              )),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                descriptions,
                style: openSans12Bold400.copyWith(fontSize: 13),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ))
        ],
      ),
    );
  }
}
