import 'dart:convert';

class Movie {
  Movie(
      {//this.movieName = '',
      this.moviePoster = '',
      //this.movieReleaseYear = '',
      //this.movieCategory = '',
      //this.movieDuration = '',
      //this.movieRating = '',
      //this.movieSinopsis = '',
      //this.movieCast = const []
  });

  //String movieName;
  String moviePoster;
  //String movieReleaseYear;
  //String movieCategory;
  //String movieDuration;
  //String movieRating;
  //String movieSinopsis;
  //List<String> movieCast;
}


var newMovies = [
  Movie(
    moviePoster: 'assets/movie-posters/poster-fastx.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-jw4.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-avatar.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-tiger3.jpg',
  ),
];


var popularMovies = [
  Movie(
    moviePoster: 'assets/movie-posters/poster-spiderman.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-jw4.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-matrix.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-eternals.jpg',
  ),
];

var upcomingMovies = [
  Movie(
    moviePoster: 'assets/movie-posters/poster-avatar.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-aquaman.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-batman.jpg',
  ),
  Movie(
    moviePoster: 'assets/movie-posters/poster-sonic.jpg',
  ),
];
