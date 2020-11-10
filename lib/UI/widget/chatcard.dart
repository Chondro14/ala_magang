part of 'widgets.dart';

class ChatCard extends StatelessWidget {
  final String imagesUser;
  final String chat;
  final int notificationUser;
  final String userName;
  final DateTime dateTime;
  ChatCard(
      {this.chat,
      this.imagesUser,
      this.notificationUser,
      this.userName,
      this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(imagesUser),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: "FFB61E".toColor(), shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        notificationUser.toString(),
                        style: openSans12Bold400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Text(
                    userName,
                    style: openSans20Bold700.copyWith(fontSize: 16),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(chat,
                    style: openSans12Bold400.copyWith(fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.clip),
              )
            ],
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Text(
                  dateTime.hour.toString() + ":" + dateTime.minute.toString(),
                  style: openSans12Bold400.copyWith(fontSize: 12)))
        ],
      ),
    );
  }
}
