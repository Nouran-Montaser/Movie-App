import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_app/presentation/pages/movie_details/misc/favorite_icon.dart';

class FavoriteFab extends HookWidget {

  final Function favoriteButtonClicked;
  final bool isFavorite;

  FavoriteFab({@required this.favoriteButtonClicked, @required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    final _inFavorites = useState(
      isFavorite
          ? FavoriteIcon(toggle: true, icon: Icon(Icons.favorite))
          : FavoriteIcon(toggle: false, icon: Icon(Icons.favorite_border)),
    );

    return FloatingActionButton(
      onPressed: () {
        final s = _inFavorites;
        s.value = s.value.copyWith(toggle: !s.value.toggle);
        s.value = s.value.toggle
            ? s.value.copyWith(
                icon: Icon(
                Icons.favorite,
                key: const Key('fav'),
              ))
            : s.value.copyWith(
                icon: Icon(
                Icons.favorite_border,
                key: const Key('not fav'),
              ));
        favoriteButtonClicked(s.value.toggle);
      },
      child: _inFavorites.value.icon,
    );
  }
}
