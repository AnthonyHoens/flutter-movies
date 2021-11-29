import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String token = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0MWQ3MDI1YWZlNzE5YzUyY2UxZjQ5MTFmODkyOWY4NSIsInN1YiI6IjYxYTNhZjM2YmU0YjM2MDA2YTZmNjZkZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.nMtbEVXphtNTC2pKQ2oFqxoNjp1dFxoLBg1SBSelVa0";

class SectionItem {
    final String _titleText;
    final String _subTitleText;
    final Future<List<dynamic>> _movies;

    SectionItem(this._titleText, this._subTitleText, this._movies);

    Future<List<dynamic>> get movies => _movies;

    String get subTitleText => _subTitleText;

    String get titleText => _titleText;
}

class MovieItem {
    final String title;
    final String image;
    final double popularity;
    final String releaseDate;

    MovieItem({
        required this.title,
        required this.image,
        required this.popularity,
        required this.releaseDate,
    });

    factory MovieItem.fromJson(Map<String, dynamic> json) {
        return MovieItem(
            title: json['title'],
            image: json['poster_path'],
            popularity: json['vote_average'],
            releaseDate: json['release_date'],
        );
    }
}

class TvItem {
    final String title;
    final String image;
    final double popularity;
    final String releaseDate;

    TvItem({
        required this.title,
        required this.image,
        required this.popularity,
        required this.releaseDate,
    });

    factory TvItem.fromJson(Map<String, dynamic> json) {
        return TvItem(
            title: json['name'],
            image: json['poster_path'],
            popularity: json['vote_average'],
            releaseDate: json['first_air_date'],
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

        for(int n = 0; n < json.decode(response.body)['results'].length - 2; n++) {
            movieItemList.add(MovieItem.fromJson(json.decode(response.body)['results'][n]));
        }

        return movieItemList;
    } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load movies');
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
        final List tvItemList = [];
        // If the server did return a 200 OK response,
        // then parse the JSON.

        for(int j = 0; j < 2; j++) {
            tvItemList.add(TvItem.fromJson(json.decode(response.body)['results'][0]));
        }

        return tvItemList;
    } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load Series');
    }
}

List<SectionItem> sectionItemData = [
    SectionItem(
        "Films populaires",
        "Cette semaine",
        popularMovies(),
    ),
    SectionItem(
        "Séries populaires",
        "Cette semaine",
        popularSeries(),
    ),
];