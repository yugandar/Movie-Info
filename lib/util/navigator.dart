import 'package:flutter/material.dart';
import 'package:movieapp/model/cast.dart';
import 'package:movieapp/model/mediaitem.dart';
import 'package:movieapp/model/tvseason.dart';
import 'package:movieapp/util/mediaproviders.dart';
import 'package:movieapp/widgets/actor_detail/actor_detail.dart';
import 'package:movieapp/widgets/favorites/favorite_screen.dart';
import 'package:movieapp/widgets/media_detail/media_detail.dart';
import 'package:movieapp/widgets/search/search_page.dart';
import 'package:movieapp/widgets/season_detail/season_detail_screen.dart';

goToMovieDetails(BuildContext context, MediaItem movie) {
  MediaProvider provider =
      (movie.type == MediaType.movie) ? MovieProvider() : ShowProvider();
  _pushWidgetWithFade(context, MediaDetailScreen(movie, provider));
}

goToSeasonDetails(BuildContext context, MediaItem show, TvSeason season) =>
    _pushWidgetWithFade(context, SeasonDetailScreen(show, season));

goToActorDetails(BuildContext context, Actor actor) {
  _pushWidgetWithFade(context, ActorDetailScreen(actor));
}

goToSearch(BuildContext context) {
  _pushWidgetWithFade(context, SearchScreen());
}

goToFavorites(BuildContext context) {
  _pushWidgetWithFade(context, FavoriteScreen());
}

_pushWidgetWithFade(BuildContext context, Widget widget) {
  Navigator.of(context).push(
        PageRouteBuilder(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child),
            pageBuilder: (BuildContext context, Animation animation,
                Animation secondaryAnimation) {
              return widget;
            }),
      );
}
