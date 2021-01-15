import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_app/application/movie_watcher/movie_watcher_bloc.dart';
import 'package:movie_app/presentation/pages/movies/misc/icon_switch_data.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:time/time.dart';

class FavoriteSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final uncompletedSwitchState = useState(
      IconSwitchData(toggle: false, icon: Icon(Icons.favorite_border)),
    );

    return InkResponse(
      onTap: () {
        final s = uncompletedSwitchState;
        s.value = s.value.copyWith(toggle: !s.value.toggle);
        s.value = s.value.toggle
            ? s.value.copyWith(
            icon: Icon(
              Icons.favorite,
              key: const Key('filled'),
            ))
            : s.value.copyWith(
            icon: Icon(
              Icons.favorite_border,
              key: const Key('outline'),
            ));
        performAction(context, favorite: s.value.toggle);
      },
      child: AnimatedSwitcher(
        duration: 100.milliseconds,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: uncompletedSwitchState.value.icon,
      ),
    ).padding(horizontal: 16);
  }

  void performAction(BuildContext context, {@required bool favorite}) {
    context.bloc<MovieWatcherBloc>().add(
      favorite
          ? const MovieWatcherEvent.watchFavoriteStarted()
          : const MovieWatcherEvent.watchAllStarted(),
    );
  }
}
