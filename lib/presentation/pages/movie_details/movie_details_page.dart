import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:movie_app/domain/movie/movie.dart';
import 'package:movie_app/inferastructure/core/constants.dart';
import 'package:movie_app/presentation/core/colors.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/movie_image.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/movie_title.dart';

class MoviesDetailsPage extends StatefulWidget {
  final Movie selectedMovie;

  const MoviesDetailsPage({
    @required this.selectedMovie,
  });

  @override
  _MoviesDetailsPageState createState() => _MoviesDetailsPageState();
}

class _MoviesDetailsPageState extends State<MoviesDetailsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;
  bool _inFavorites = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    // "Unmount" the controllers:
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _toggleInFavorites() {
    setState(() {
      _inFavorites = !_inFavorites;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> cast = [
      "/fysvehTvU6bE3JgxaOTRfvQJzJ4.jpg",
      "/vSe6sIsdtcoqBhuWRXynahFg8Vf.jpg",
      "/oddvykQHx71hEZlvKinCzB3Vcfh.jpg",
      "/kpaBw1oyfu2vGS2t9gGBz1Pz7vk.jpg",
      "/8SWAGtDKEKWz3O5xV5Q31mZXUvL.jpg",
      "/gSQ3O3PJ6ly6nT63joOtfZyscFP.jpg"
    ];
    widget.selectedMovie.cast = cast;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: Text(widget.selectedMovie.title),),
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder:
              (BuildContext context, bool innerViewIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text(widget.selectedMovie.title),
                backgroundColor: ACCENT_COLOR,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MovieImage(IMAGE_URL + widget.selectedMovie.backdropPath),
                      MovieTitle(widget.selectedMovie, 25.0),
                    ],
                  ),
                ),
                expandedHeight: ScreenUtil().setHeight(1300),
                pinned: true,
                floating: true,
                elevation: 2.0,
                forceElevated: innerViewIsScrolled,
              )
            ];
          },
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Storyline",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 10.0),
                Text(
                  widget.selectedMovie.overview,
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                SizedBox(height: 30.0),
                Text(
                  "Cast",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 10.0),
                if (widget.selectedMovie.cast.length > 0) ...[
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 8,
                    children: <Widget>[
                      ...widget.selectedMovie.cast.map(
                        (cast) => CastDisplay(
                          movieCast: cast,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // updateFavorites(appState.user.uid, widget.recipe.id).then((result) {
            // if (result) _toggleInFavorites();
            // });
          },
          child: Icon(
            _inFavorites ? Icons.favorite : Icons.favorite_border,
            color: Theme.of(context).iconTheme.color,
          ),
          elevation: 2.0,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class CastDisplay extends StatelessWidget {
  final String movieCast;

  const CastDisplay({Key key, this.movieCast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30.0,
      backgroundImage:
      NetworkImage(IMAGE_URL + movieCast),
      backgroundColor: Colors.transparent,
    );
  }
}

