part of 'pages.dart';

class BlogPageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BlogPageMainState();
  }
}

class BlogPageMainState extends State<BlogPageMain> {
  int selectedIndex = 0;
  List<String> titles=["Top", "Health", "Diet", "Kids", "Culinary"];
  /*List<Blog> blog = blogListData
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
      */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Blog",
          style: openSans20Bold700.copyWith(color: "FFB61E".toColor()),
        ),
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
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 80,
                padding: EdgeInsets.symmetric(vertical: 12),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Cari",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ))),
            CustomTabbar(
                onPressed: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                selectedIndex: selectedIndex,
                titles: titles),
            Container(
              width: double.infinity,

              child: BlocBuilder<BlogCubit, BlogState>(
                builder: (_, state) {
                  BlocProvider.of<BlogCubit>(context).getBlogs();
                  if (state is BlogLoadSucces) {
                    List<Blog> blog5 = state.blog
                        .where((element) =>
                            element.blogStatus.contains((selectedIndex == 0)
                                ? BlogStatus.Top
                                : (selectedIndex == 1)
                                    ? BlogStatus.Health
                                    : (selectedIndex == 2)
                                        ? BlogStatus.Diet
                                        : (selectedIndex == 3)
                                            ? BlogStatus.Kids
                                            : BlogStatus.Culinery))
                        .toList();
                    List<Blog> blog = state.blog
                        .where((element) => element.blogStatus
                            .contains( BlogStatus.Top))
                        .toList();
                    List<Blog> blog1 = state.blog
                        .where((element) => element.blogStatus
                            .contains( BlogStatus.Health))
                        .toList();
                    List<Blog> blog2 = state.blog
                        .where((element) => element.blogStatus
                            .contains( BlogStatus.Diet))
                        .toList();
                    List<Blog> blog3 = state.blog
                        .where((element) => element.blogStatus
                            .contains( BlogStatus.Kids))
                        .toList();
                    List<Blog> blog4 = state.blog
                        .where((element) => element.blogStatus.contains(
                             BlogStatus.Culinery))
                        .toList();
                    return Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:16.0,left:16.0),
                            child: Text(
                              (selectedIndex==0)?titles[0]:(selectedIndex==1)?titles[1]:(selectedIndex==2)?titles[2]:(selectedIndex==3)?titles[3]:titles[4],
                              style: openSans20Bold700,
                            ),
                          ),
                          Column(
                            children: /* (selectedIndex==0)?blog:(selectedIndex==1)?blog1:(selectedIndex==2)?blog2:(selectedIndex==3)?blog3:blog4*/
                                blog5
                                    .map((e) => BlogCard(
                                          title: e.titles,
                                          media: e.media,
                                          image: e.images,
                                        ))
                                    .toList(),
                          )
                        ],
                      ),
                    );
                  } else {
                    return Center(child: SpinKitChasingDots(color: "FFB61E".toColor(),),);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
