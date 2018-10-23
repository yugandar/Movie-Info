import 'package:flutter/material.dart';
import 'package:movieapp/model/cast.dart';
import 'package:movieapp/util/navigator.dart';
import 'package:movieapp/util/styles.dart';
import 'package:movieapp/widgets/utilviews/bottom_gradient.dart';

class CastCard extends StatelessWidget {
  final double height;
  final double width;
  final Actor actor;

  CastCard(this.actor, {this.height: 140.0, this.width: 100.0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToActorDetails(context, actor),
      child: Container(
        height: height,
        width: width,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Hero(
              tag: 'Cast-Hero-${actor.id}',
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/placeholder.jpg',
                image: actor.profilePictureUrl,
                fit: BoxFit.cover,
                height: height,
                width: width,
              ),
            ),
            BottomGradient.noOffset(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    actor.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0),
                  ),
                  Container(
                    height: 4.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Icon(
                        Icons.person,
                        color: salmon,
                        size: 10.0,
                      )),
                      Container(
                        width: 4.0,
                      ),
                      Expanded(
                        flex: 8,
                        child: Text(actor.character,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 8.0)),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
