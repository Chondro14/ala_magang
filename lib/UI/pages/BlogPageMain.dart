part of 'pages.dart';

class BlogPageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BlogPageMainState();
  }
}

class BlogPageMainState extends State<BlogPageMain> {
  int selectedIndex = 0;
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
                titles: ["Top", "Health", "Diet", "Kids", "Culinary"]),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: BlocBuilder<BlogCubit, BlogState>(
                cubit: BlogCubit(),
                builder: (_, state) {
                  if (state is BlogLoadSucces) {
                    List<Blog> blog5 = blogListData
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
                            .contains(element.blogStatus == BlogStatus.Top))
                        .toList();
                    List<Blog> blog1 = state.blog
                        .where((element) => element.blogStatus
                            .contains(element.blogStatus == BlogStatus.Health))
                        .toList();
                    List<Blog> blog2 = state.blog
                        .where((element) => element.blogStatus
                            .contains(element.blogStatus == BlogStatus.Diet))
                        .toList();
                    List<Blog> blog3 = state.blog
                        .where((element) => element.blogStatus
                            .contains(element.blogStatus == BlogStatus.Kids))
                        .toList();
                    List<Blog> blog4 = state.blog
                        .where((element) => element.blogStatus.contains(
                            element.blogStatus == BlogStatus.Culinery))
                        .toList();
                    return Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            "Top",
                            style: openSans20Bold700,
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
                    List<Blog> blog5 = blogListData
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
                    /*List<Blog> blog = state.blog
                        .where((element) =>
                        element.blogStatus.contains(element.blogStatus == BlogStatus.Top))
                        .toList();
                    List<Blog> blog1 = state.blog
                        .where((element) =>
                        element.blogStatus.contains(element.blogStatus == BlogStatus.Health))
                        .toList();
                    List<Blog> blog2 = state.blog
                        .where((element) =>
                        element.blogStatus.contains(element.blogStatus == BlogStatus.Diet))
                        .toList();
                    List<Blog> blog3 = state.blog
                        .where((element) =>
                        element.blogStatus.contains(element.blogStatus == BlogStatus.Kids))
                        .toList();
                    List<Blog> blog4 = state.blog
                        .where((element) =>
                        element.blogStatus.contains(element.blogStatus == BlogStatus.Culinery))
                        .toList();*/
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 12),
                          child: Text(
                            "Top",
                            style: openSans20Bold700,
                          ),
                        ),
                        Column(
                          children: /* (selectedIndex==0)?blog:(selectedIndex==1)?blog1:(selectedIndex==2)?blog2:(selectedIndex==3)?blog3:blog4*/
                              blogListData
                                  .map((e) => BlogCard(
                                        title: e.titles,
                                        media: e.media,
                                        image: e.images,
                                      ))
                                  .toList(),
                        )
                      ],
                    );
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
