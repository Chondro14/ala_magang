part of 'models.dart';

class UserChat extends Equatable {
  final int id;
  final String userName;
  final String chat;
  final String imageUser;
  final int notificationChat;
  final DateTime dateTime;
  UserChat(
      {this.id,
      this.chat,
      this.dateTime,
      this.notificationChat,
      this.userName,
      this.imageUser});
  @override
  // TODO: implement props
  List<Object> get props =>
      [id, userName, chat, imageUser, notificationChat, dateTime];
}

List<UserChat> userChatData = [
  UserChat(
      id: 1,
      chat: "Ok Terima kasih kak atas ratingnya",
      notificationChat: 5,
      userName: "Muslim",
      imageUser:
          "https://www.kanal247.com/images/media/photo/2020/01/28/0000046654_1.jpg",
      dateTime: DateTime.now()),
  UserChat(
      id: 2,
      chat: "Aku masih di pasar bu,adakah yang bisa dibantu?",
      notificationChat: 3,
      dateTime: DateTime.now(),
      userName: "Choki",
      imageUser:
          "https://www.whiteboardjournal.com/wp-content/uploads/2019/09/whiteboardjournal_interview_cokimuslim_3.jpg"),
  UserChat(
      id: 3,
      chat: "Selamat Sore ada yang bisa saya bantu ?",
      notificationChat: 10,
      userName: "Ade Odading",
      imageUser:
          "https://cdns.klimg.com/dream.co.id/resized/640x320/news/2020/09/26/148119/gegara-odading-mang-oleh-bikin-ibunda-bangga-200926l.jpg",
      dateTime: DateTime.now()),
];
