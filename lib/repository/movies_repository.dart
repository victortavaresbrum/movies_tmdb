import 'package:desafio_api_cubos/models/movie_model.dart';
import 'package:dio/dio.dart';
import '../resources/urls.dart';

class MoviesRepository {

  static const apiKey = 'cd2c9e16511fead080ab954d49a376ff';

  final _dio = Dio();

  Future<List<MovieModel>> getPopular() async {
    try {
      final response = await _dio.get(
          '${Urls.baseUrl}${Urls.popularUrl}?api_key=$apiKey&language=pt-BR&page=1'); //Requisição

      final List<MovieModel> catalogs = response.data['results'] //Resultados da pesquisa
          .map<MovieModel>((map) => MovieModel.fromMap(map))
          .toList(); //
          
      return catalogs; //Retornando o mapeamento dos dados da API
    } on DioError catch (e) {
      if (e.response!.statusCode == 401) {
        throw Exception('Erro 401 - Api Key Inválida');
      } else if (e.response!.statusCode == 404) {
        throw Exception('Erro 404 - Arquivo não encontrado');
      }
      throw e.error;
    } catch (e) {
      throw Exception();
    }
  }
    Future<List<MovieModel>> getTopRated() async {
    try {
      final response = await _dio.get(
          '${Urls.baseUrl}${Urls.topRatedUrl}?api_key=$apiKey&language=pt-BR&page=1'); //Requisição

      final List<MovieModel> catalogs = response.data['results'] //Resultados da pesquisa
          .map<MovieModel>((map) => MovieModel.fromMap(map))
          .toList(); //
          
      return catalogs; //Retornando o mapeamento dos dados da API
    } on DioError catch (e) {
      if (e.response!.statusCode == 401) {
        throw Exception('Erro 401 - Api Key Inválida');
      } else if (e.response!.statusCode == 404) {
        throw Exception('Erro 404 - Arquivo não encontrado');
      }
      throw e.error;
    } catch (e) {
      throw Exception();
    }
  }
}
