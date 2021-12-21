import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String token = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0MWQ3MDI1YWZlNzE5YzUyY2UxZjQ5MTFmODkyOWY4NSIsInN1YiI6IjYxYTNhZjM2YmU0YjM2MDA2YTZmNjZkZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.nMtbEVXphtNTC2pKQ2oFqxoNjp1dFxoLBg1SBSelVa0";

class MovieSliderItem {
    final String _titleText;
    final String _subTitleText;
    final Future<List<dynamic>> _movies;

    MovieSliderItem(this._titleText, this._subTitleText, this._movies);

    Future<List<dynamic>> get movies => _movies;

    String get subTitleText => _subTitleText;

    String get titleText => _titleText;
}

class MovieItem {
    final int movieId;
    final String title;
    final String backdropPath;
    final String posterPath;
    final String originalTitle;
    final String overview;
    final double popularity;
    final double voteAverage;
    final String releaseDate;

    MovieItem({
        this.movieId = 0,
        this.title = '',
        this.backdropPath = '',
        this.posterPath = '',
        this.originalTitle = '',
        this.overview = '',
        this.popularity = 0,
        this.voteAverage = 0,
        this.releaseDate = '',
    });

    factory MovieItem.fromJson(Map<String, dynamic> json) {
        return MovieItem(
            movieId: json['id'] ?? 0,
            title: json['title'] ?? '',
            backdropPath: json['backdrop_path'] ?? '',
            posterPath: json['poster_path'] ?? '',
            originalTitle: json['original_title'] ?? '',
            overview: json['overview'] ?? '',
            popularity: json['popularity'].toDouble() ?? 0,
            voteAverage: json['vote_average'].toDouble() ?? 0,
            releaseDate: json['release_date'] ?? '',
        );
    }

    factory MovieItem.tvFromJson(Map<String, dynamic> json) {
        return MovieItem(
            movieId: json['id'] ?? 0,
            title: json['name'] ?? '',
            backdropPath: json['backdrop_path'] ?? '',
            posterPath: json['poster_path'] ?? '',
            originalTitle: json['original_name'] ?? '',
            overview: json['overview'] ?? '',
            popularity: json['popularity'].toDouble() ?? 0,
            voteAverage: json['vote_average'].toDouble() ?? 0,
            releaseDate: json['first_air_date'] ?? '',
        );
    }
}

Future<List<dynamic>> popularMovies() async {
    final response = await http.get(
        Uri.parse('https://api.themoviedb.org/3/movie/popular'),
        headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
    });

    if (response.statusCode == 200) {
        final List movieItemList = [];
        // If the server did return a 200 OK response,
        // then parse the JSON.

        for(int n = 0; n < json.decode(response.body)['results'].length; n++) {
            movieItemList.add(MovieItem.fromJson(json.decode(response.body)['results'][n]));
        }

        return movieItemList;
    } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Oups ! ${response.statusCode} - ${response.reasonPhrase}');
    }
}

Future<List<dynamic>> popularSeries() async {
    final response = await http.get(
        Uri.parse('https://api.themoviedb.org/3/tv/popular'),
        headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
        });

    if (response.statusCode == 200) {
        final List movieItemList = [];

        // If the server did return a 200 OK response,
        // then parse the JSON.

        for(int n = 0; n < json.decode(response.body)['results'].length; n++) {
            movieItemList.add(MovieItem.tvFromJson(json.decode(response.body)['results'][n]));
        }

        return movieItemList;
    } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Oups ! ${response.statusCode} - ${response.reasonPhrase}');
    }
}

List<MovieSliderItem> movieSliderItemData = [
    MovieSliderItem(
        "Films populaires",
        "Cette semaine",
        popularMovies(),
    ),
    MovieSliderItem(
        "Séries populaires",
        "Cette semaine",
        popularSeries(),
    ),
];