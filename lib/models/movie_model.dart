import '../resources/urls.dart';

class MovieModel {
  final String img;
  final String nameMovie;
  final String details;
  final String detailsImg;

  MovieModel(
      {required this.detailsImg,
      required this.img,
      required this.nameMovie,
      required this.details});

  factory MovieModel.fromMap(Map<String, dynamic> data) {
    return MovieModel(
      img: "${Urls.baseImageUrl}${data['poster_path']}",
      nameMovie: data["title"],
      details: data["overview"],
      detailsImg: "${Urls.baseImageUrl}${data['backdrop_path']}",
    );
  }
}
