import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memes/domain/entities/meme.dart';

class CardView extends StatelessWidget {
  const CardView({
    super.key,
    required this.meme,
  });
  final Meme meme;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          SizedBox.expand(
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              child: SizedBox(
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: CachedNetworkImage(
                    height: meme.height?.toDouble(),
                    width: meme.width?.toDouble(),
                    fit: BoxFit.cover,
                    memCacheHeight: 150,
                    memCacheWidth: 150,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    placeholder: (context, url) =>
                        const CupertinoActivityIndicator(),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey,
                    ),
                    imageUrl: meme.url ??
                        "https://s.yimg.com/ny/api/res/1.2/KU.o.AeYu2FBLHc.D4bY8w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/os/creatr-uploaded-images/2024-05/4dcc3510-1c98-11ef-9772-9453ed1243aa",
                  ),
                ),
              ),
            ),
          ),
          SizedBox.expand(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black54],
                    begin: Alignment.center,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meme.name ?? "",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 8.0)),
                  Text(
                    meme.name ?? "",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
