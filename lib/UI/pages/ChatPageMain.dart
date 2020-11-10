part of 'pages.dart';

class ChatPageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatPageMainState();
  }
}

class ChatPageMainState extends State<ChatPageMain> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Chats",
            style: openSans20Bold700.copyWith(
              color: "FFB61E".toColor(),
              fontSize: 18,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: "FFB61E".toColor(),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: userChatData
              .map((e) => ChatCard(
                    imagesUser: e.imageUser,
                    notificationUser: e.notificationChat,
                    userName: e.userName,
                    chat: e.chat,
                    dateTime: e.dateTime,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
