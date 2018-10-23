import 'package:flutter/material.dart';
import 'package:movieapp/model/mediaitem.dart';
import 'package:movieapp/model/tvseason.dart';
import 'package:movieapp/widgets/media_detail/season-card.dart';

class SeasonSection extends StatelessWidget {
  final MediaItem _show;
  final List<TvSeason> _seasons;

  SeasonSection(this._show, this._seasons);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Seasons",
          style: TextStyle(color: Colors.white),
        ),
        Container(
          height: 8.0,
        ),
        Container(
          height: 140.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _seasons
                .map((TvSeason season) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SeasonCard(_show, season),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
