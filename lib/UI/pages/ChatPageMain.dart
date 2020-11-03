part of'pages.dart';

class ChatPageMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatPageMainState();
  }
  
}
class ChatPageMainState extends State<ChatPageMain>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text("Chats"),actions: [IconButton(
      onPressed: (){},
      icon: Icon(
        Icons.notifications,
        color: "FFB61E".toColor(),
      ),
    )],),body: Container(),);
  }
  
}