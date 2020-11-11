import 'package:ala_magang/models/models.dart';
import 'package:ala_magang/service/service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'blog_state.dart';

class BlogCubit extends Cubit<BlogState> {
  BlogCubit() : super(BlogInitial());
  Future<void> getBlogs()async{
    ApiReturnValue<List<Blog>> result=await BlogService.getBlog();
    if(result.value!=null){
      emit(BlogLoadSucces( result.value));
    }
    else{
      emit(BlogLoadFailed( result.message));
    }
  }
}
