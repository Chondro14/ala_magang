part of'service.dart';



class BlogService {
  static Future<ApiReturnValue<List<Blog>>> getBlog() async {
    await Future.delayed(Duration(milliseconds: 500));
    return ApiReturnValue(value: blogListData);
  }
}