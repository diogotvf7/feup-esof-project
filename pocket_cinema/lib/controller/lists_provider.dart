import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_cinema/model/media.dart';

List<Media> _mediaToWatch = const [
    Media("tt3581920", "Mad Men", "https://br.web.img3.acsta.net/pictures/21/02/10/20/02/0834301.jpg","assets/images/movieBackground.png","6/10","(12mil)","Etiam mattis convallis orci eu malesuada. Donec odio ex, facilisis ac blandit vel, placerat ut lorem.", MediaType.series),
    Media("tt3581920", "Dr. House", "https://www.themoviedb.org/t/p/original/lW7MvZ4m49IUj2UrUu4z0xVVl81.jpg","assets/images/movieBackground.png","6/10","(12mil)","Etiam mattis convallis orci eu malesuada. Donec odio ex, facilisis ac blandit vel, placerat ut lorem.", MediaType.series),
    Media("tt3581920", "Sherlock", "https://cdn.europosters.eu/image/750/posters/sherlock-destruction-i34921.jpg","assets/images/movieBackground.png","6/10","(12mil)","Etiam mattis convallis orci eu malesuada. Donec odio ex, facilisis ac blandit vel, placerat ut lorem.", MediaType.series),
    Media("tt3581920", "The Walking Dead", "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81UvZYUoOJL.jpg","assets/images/movieBackground.png","6/10","(12mil)","Etiam mattis convallis orci eu malesuada. Donec odio ex, facilisis ac blandit vel, placerat ut lorem.", MediaType.series),
    Media("tt3581920", "Dexter", "https://cdn.europosters.eu/image/750/posters/dexter-shrinkwrapped-i14382.jpg","assets/images/movieBackground.png","6/10","(12mil)","Etiam mattis convallis orci eu malesuada. Donec odio ex, facilisis ac blandit vel, placerat ut lorem.", MediaType.series),
    Media("tt3581920", "Patrick Melrose", "https://m.media-amazon.com/images/M/MV5BMjIwNzk4OTQ1NV5BMl5BanBnXkFtZTgwMjE0NDMyNTM@._V1_.jpg","assets/images/movieBackground.png","6/10","(12mil)","Etiam mattis convallis orci eu malesuada. Donec odio ex, facilisis ac blandit vel, placerat ut lorem.", MediaType.series),
];

final toWatchListProvider = FutureProvider<List<Media>>((ref) async {
  // Fake get call
  final mediaToWatch = await Future.delayed(
    const Duration(seconds: 1),
    () => _mediaToWatch,
  );

  return mediaToWatch;
});


// Return the lists of the user
final listsProvider = FutureProvider.autoDispose<List>((ref) async {
  return [];
});