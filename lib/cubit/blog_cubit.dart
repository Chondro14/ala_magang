import 'package:ala_magang/models/models.dart';
import 'package:ala_magang/service/service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'blog_state.dart';

class BlogCubit extends Cubit<BlogState> {
  BlogCubit() : super(BlogInitial());
  Future<void> getBlogs()async{
    ApiReturnValue<List<Blog>> results=await BlogService.getBlog();
    if(results.value!=null){
      emit(BlogLoadSucces(blog: results.value));
    }
    else{
      emit(BlogLoadFailed(message: results.message));
    }
  }
}
