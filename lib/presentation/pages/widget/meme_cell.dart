import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memes/app/config/app_text_styles.dart';
import 'package:memes/domain/entities/meme.dart';

class MemeCell extends StatelessWidget {
  final Meme results;

  const MemeCell({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 300,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CachedNetworkImage(
              width: 120,
              memCacheHeight: 150,
              memCacheWidth: 150,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => const CupertinoActivityIndicator(),
              errorWidget: (context, url, error) => Container(
                color: Colors.grey,
              ),
              imageUrl: results.url ??
                  "https://s.yimg.com/ny/api/res/1.2/KU.o.AeYu2FBLHc.D4bY8w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/os/creatr-uploaded-images/2024-05/4dcc3510-1c98-11ef-9772-9453ed1243aa",
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  results.name ?? "",
                  maxLines: 2,
                  style: AppTextStyles.title,
                ),
                /*const Spacer(),
                Text(
                  results.species ?? "",
                  maxLines: 1,
                  style: AppTextStyles.body,
                ),
                Text(
                  Jiffy(results.created).yMMMMd,
                  maxLines: 1,
                  style: AppTextStyles.body,
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
