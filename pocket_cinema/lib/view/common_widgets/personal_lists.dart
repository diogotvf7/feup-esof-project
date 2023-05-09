import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pocket_cinema/controller/lists_provider.dart';
import 'package:pocket_cinema/model/media.dart';
import 'package:pocket_cinema/model/media_list.dart';
import 'package:pocket_cinema/view/common_widgets/media_list_poster.dart';
import 'package:pocket_cinema/view/common_widgets/poster_shimmer.dart';
import 'package:pocket_cinema/view/common_widgets/shimmer.dart';

class PersonalList extends ConsumerWidget {
  final Media? media;
  const PersonalList({super.key, this.media});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<MediaList>> personalList = ref.watch(listsProvider);

    return personalList.when(
      data: (List<MediaList> data) =>
          MediaListList(mediaListList: data, media: media),
      error: (error, stackTrace) {
        Logger().e(error);
        return const SizedBox();
      },
      loading: () => ShimmerEffect(
          child: SizedBox(
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.black,
                ),
                itemCount: 7,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: PosterShimmer(),
                ),
              ))),
    );
  }
}
