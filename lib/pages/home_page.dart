// ignore_for_file: deprecated_member_use

import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/services/tweet_service.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';
import 'widgets/icon_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabCtrl;
  @override
  void initState() {
    super.initState();
    tabCtrl = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
    tabCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 30,
          height: 30,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: grey,
              width: 2,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/image1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: SvgPicture.asset(
          twitterLogo,
          color: white,
          height: 30,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: grey,
                  width: 0.5,
                ),
              ),
            ),
            child: TabBar(
              controller: tabCtrl,
              tabs: const [
                Tab(text: 'Untuk Anda'),
                Tab(text: 'Mengikuti'),
              ],
              labelColor: white,
              unselectedLabelColor: grey,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              indicatorColor: blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabCtrl,
        children: [
          _Tab(
            tweets: TweetService.getTweet(),
          ),
          _Tab(
            tweets: TweetService.getTweet(),
          ),
        ],
      ),
    );
  }
}

class _Tab extends StatefulWidget {
  final List<TweetModel> tweets;
  const _Tab({required this.tweets});

  @override
  State<_Tab> createState() => _TabState();
}

class _TabState extends State<_Tab> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.tweets.length,
      separatorBuilder: (context, index) => const Divider(height: 0),
      itemBuilder: (context, index) => InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: white.withOpacity(0.08),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    widget.tweets[index].verified == 'blue' ? 100 : 10,
                  ),
                  border: Border.all(
                    color: grey,
                    width: 2,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    widget.tweets[index].verified == 'blue' ? 100 : 10,
                  ),
                  child: Image.asset(
                    'assets/images/image1.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: Text(
                                  widget.tweets[index].namaPengguna,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              if (widget.tweets[index].verified != 'no')
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: SvgPicture.asset(
                                    verifiedIcon,
                                    width: 15,
                                    height: 15,
                                    color:
                                        widget.tweets[index].verified == 'blue'
                                            ? blue
                                            : yellow,
                                  ),
                                ),
                              Flexible(
                                flex: 2,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    '@${widget.tweets[index].username}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: grey,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '· 21 jam',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.more_vert_rounded,
                              size: 16,
                              color: grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (widget.tweets[index].otomatis.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              robotIcon,
                              width: 14,
                              height: 14,
                              color: grey,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Otomatis',
                              style: TextStyle(
                                fontSize: 14,
                                color: grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: (widget.tweets[index].body.length > 300)
                                ? '${widget.tweets[index].body.substring(0, 300)}...'
                                : widget.tweets[index].body,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: white.withOpacity(0.8),
                            ),
                          ),
                          if (widget.tweets[index].body.length > 300)
                            const TextSpan(
                              text: 'Tampilkan lebih banyak',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blue,
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (widget.tweets[index].image.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: StaggeredGrid.count(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: widget.tweets[index].image.length == 3
                              ? [
                                  StaggeredGridTile.count(
                                    crossAxisCellCount: 2,
                                    mainAxisCellCount: 4,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        widget.tweets[index].image[0],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  ...widget.tweets[index].image
                                      .skip(1)
                                      .map(
                                        (e) => StaggeredGridTile.count(
                                          crossAxisCellCount: 2,
                                          mainAxisCellCount: 2,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              e,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ]
                              : [
                                  ...widget.tweets[index].image.map(
                                    (e) {
                                      final length =
                                          widget.tweets[index].image.length;
                                      return StaggeredGridTile.count(
                                        crossAxisCellCount: length == 1 ? 4 : 2,
                                        mainAxisCellCount: length == 1 ? 4 : 2,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            e,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ],
                        ),
                      ),
                    if (widget.tweets[index].url.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: AnyLinkPreview(
                          link: widget.tweets[index].url,
                          backgroundColor: background,
                          titleStyle: const TextStyle(
                            fontSize: 14,
                            color: grey,
                          ),
                          bodyStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: white.withOpacity(0.8),
                          ),
                          bodyMaxLines: 2,
                          boxShadow: const [
                            BoxShadow(
                              color: grey,
                              blurRadius: 0.08,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconWidget(
                            path: commentIcon,
                            text: NumberFormat.compactCurrency(
                              locale: 'id',
                              symbol: '',
                              decimalDigits: 0,
                            ).format(widget.tweets[index].comment.length),
                            onTap: () {},
                          ),
                          IconWidget(
                            path: retweetIcon,
                            color: widget.tweets[index].retweet.contains('user')
                                ? green
                                : grey,
                            text: NumberFormat.compactCurrency(
                              locale: 'id',
                              symbol: '',
                              decimalDigits: 0,
                            ).format(widget.tweets[index].retweet.length),
                            onTap: () {
                              setState(() {
                                widget.tweets[index].retweet.contains('user')
                                    ? widget.tweets[index].retweet
                                        .remove('user')
                                    : widget.tweets[index].retweet.add('user');
                              });
                            },
                          ),
                          LikeButton(
                            size: 16,
                            bubblesColor: const BubblesColor(
                              dotPrimaryColor: white,
                              dotSecondaryColor: grey,
                            ),
                            circleColor:
                                const CircleColor(start: white, end: red),
                            onTap: (isLiked) async {
                              widget.tweets[index].like.contains('user')
                                  ? widget.tweets[index].like.remove('user')
                                  : widget.tweets[index].like.add('user');
                              return !isLiked;
                            },
                            isLiked: widget.tweets[index].like.contains('user'),
                            likeBuilder: (isLiked) {
                              return isLiked
                                  ? SvgPicture.asset(
                                      likeFilledIcon,
                                      color: red,
                                    )
                                  : SvgPicture.asset(
                                      likeOutlinedIcon,
                                      color: grey,
                                    );
                            },
                            likeCount: widget.tweets[index].like.length,
                            countBuilder: (likeCount, isLiked, text) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Text(
                                  NumberFormat.compactCurrency(
                                    locale: 'id',
                                    symbol: '',
                                    decimalDigits: 0,
                                  ).format(widget.tweets[index].like.length),
                                  style: TextStyle(
                                    color: isLiked ? red : grey,
                                  ),
                                ),
                              );
                            },
                          ),
                          IconWidget(
                            path: viewsIcon,
                            text: NumberFormat.compactCurrency(
                              locale: 'id',
                              symbol: '',
                              decimalDigits: 0,
                            ).format(widget.tweets[index].view),
                            onTap: () {},
                          ),
                          IconWidget(
                            path: shareIcon,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
