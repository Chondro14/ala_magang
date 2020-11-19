part of 'widgets.dart';

class BlogCard extends StatelessWidget {
  final String image;
  final String title;
  final String media;
  BlogCard({this.title, this.image, this.media});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(image))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  title,
                  style: openSans20Bold700.copyWith(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  media,
                  style: openSans12Bold400,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
