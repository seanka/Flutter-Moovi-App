// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class MovieData {
  String cover;
  String title;
  String genre;
  String description;
  String rating;
  String director;
  String cast;

  MovieData({
    required this.cover,
    required this.title,
    required this.genre,
    required this.description,
    required this.rating,
    required this.director,
    required this.cast
});
}

var movieDataList = [
  MovieData(
      cover: 'assets/images/posterTheRevenant.jpg',
      title: 'The Revenant',
      genre: '2021 . Dark',
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor "
          "in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
      rating: '8.5/ 10',
      director: 'Director The Revenant',
      cast: 'Cast 1 TR, Cast 2 TR',
  ),

  MovieData(
      cover: 'assets/images/posterTheLittlePrince.jpg',
      title: 'The Little Prince',
      genre: '2022 . Comedy',
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor "
          "in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
      rating: '5.0/ 10',
      director: 'Director The Little Prince',
      cast: 'Cast 1 TLR, Cast 2 TLR',
  )
];