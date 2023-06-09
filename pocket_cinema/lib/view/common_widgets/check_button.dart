import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heroicons/heroicons.dart';
import 'package:pocket_cinema/controller/lists_provider.dart';
import 'package:pocket_cinema/model/media.dart';

class CheckButton extends ConsumerWidget {
  final VoidCallback onPressed;
  final String mediaId;
  final String? tooltip;

  const CheckButton({
    Key? key,
    required this.onPressed,
    required this.mediaId,
    this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color checkedColor = Theme.of(context).colorScheme.primary;
    const Color whiteColor = Color.fromARGB(255, 221, 221, 221);

    List<Media> watchedList = ref.watch(watchListProvider);
    bool checked = watchedList.any((element) => element.id == mediaId);
    return Tooltip(
      message: tooltip ?? 'Mark this movie as watched',
      child: IconButton(
        key: Key('checkButton ${checked ? 'checked' : 'unchecked'}'),
        icon: const HeroIcon(HeroIcons.check),
        onPressed: () {
          onPressed();
          showWatchedToast(checked);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(checked ? checkedColor : null),
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          side: MaterialStateProperty.all(
            BorderSide(color: checked ? checkedColor : whiteColor, width: 2),
          ),
        ),
      ),
    );
  }

  void showWatchedToast(bool checked) {
    if (checked) {
      Fluttertoast.showToast(msg: 'Removed from the watched list');
    } else {
      Fluttertoast.showToast(msg: 'Added to the watched list');
    }
  }
}
