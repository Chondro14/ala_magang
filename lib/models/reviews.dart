part of "models.dart";

class ReviewClass extends Equatable {
  final String names;
  final String images;
  final double rating;
  final String descriptions;
  ReviewClass({this.images, this.descriptions, this.rating, this.names});
  @override
  // TODO: implement props
  List<Object> get props => [names, images, rating, descriptions];
}

List<ReviewClass> userReviews = [
  ReviewClass(
      names: "Sora Amamiya",
      descriptions: "Sangat ramah,dan kualitas bagus",
      images:
          "https://m.media-amazon.com/images/M/MV5BZTE0Njg4ZjAtZTk5NS00Yjg3LTllODYtZmEzODE0ZTYzZjZkXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_UX630_CR0,0,630,1200_AL_.jpg",
      rating: 4.3),
  ReviewClass(
      names: "Inori minase",
      descriptions: "Kualitas sayur yang bagus dan fresh",
      images:
      "https://m.media-amazon.com/images/M/MV5BOTRjOWE2MjktMTI1OS00NGVlLWFiOWUtZTQzNGI0M2JlMjRhXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_UY1200_CR125,0,630,1200_AL_.jpg",
      rating: 4.7),

];
