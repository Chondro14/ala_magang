part of 'blog_cubit.dart';

abstract class BlogState extends Equatable {
  const BlogState();
  @override
  List<Object> get props => [];
}

class BlogInitial extends BlogState {

}
class BlogLoadSucces extends BlogState{
  final List<Blog> blog;
  BlogLoadSucces(this.blog);
  @override
  List<Object> get props => [blog];
}
class BlogLoadFailed extends BlogState{
  final String message;
  BlogLoadFailed(this.message);
  @override
  List<Object> get props => [message];
}
