part of'pages.dart';

class FeedPageMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FeedPageMainState();
  }
  
}
class FeedPageMainState extends State<FeedPageMain>{
  List<Blog> blog25=blogListData;
  List<Blog> blog = blogListData
      .where((element) =>
      element.blogStatus.contains(element.blogStatus == BlogStatus.Top))
      .toList();
  List<Blog> blog1 = blogListData
      .where((element) =>
      element.blogStatus.contains(element.blogStatus == BlogStatus.Health))
      .toList();
  List<Blog> blog2 = blogListData
      .where((element) =>
      element.blogStatus.contains(element.blogStatus == BlogStatus.Diet))
      .toList();
  List<Blog> blog3 = blogListData
      .where((element) =>
      element.blogStatus.contains(element.blogStatus == BlogStatus.Kids))
      .toList();
  List<Blog> blog4 = blogListData
      .where((element) =>
      element.blogStatus.contains(element.blogStatus == BlogStatus.Culinery))
      .toList();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(child: ListView(children: blog25.map((e) => BlogCard(title: e.titles,media: e.media,image: e.images,)).toList(),),);
  }
  
}