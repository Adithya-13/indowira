// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/shared.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    super.key,
    this.tabIndex,
  });
  final int? tabIndex;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    safeRebuild(() {
      if (widget.tabIndex.isNotNull()) {
        _controller.jumpToTab(widget.tabIndex!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      tabs: [
        CustomPersistentTabConfig(
          screen: const HomePage(),
          item: CustomItemConfig(
            icon: const Icon(Icons.home),
            title: "Home",
            path: Assets.icons.home.path,
          ),
        ),
        CustomPersistentTabConfig(
          screen: const FeedPage(),
          item: CustomItemConfig(
            icon: const Icon(Icons.home),
            title: "Feed",
            path: Assets.icons.feed.path,
          ),
        ),
        CustomPersistentTabConfig(
          screen: Container(),
          item: CustomItemConfig(
            icon: const Icon(Icons.home),
            title: "Aksi",
            path: Assets.icons.action.path,
          ),
        ),
        CustomPersistentTabConfig(
          screen: const WiraLeaderPage(),
          item: CustomItemConfig(
            icon: const Icon(Icons.home),
            title: "Wira Leader",
            path: Assets.icons.wireLeader.path,
          ),
        ),
        CustomPersistentTabConfig(
          screen: const AccountPage(),
          item: CustomItemConfig(
            icon: const Icon(Icons.home),
            title: "Akun",
            path: Assets.icons.account.path,
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => CustomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}

final navBarItem = [
  CustomItemConfig(
    icon: const Icon(Icons.home),
    title: "Home",
    path: Assets.icons.home.path,
  ),
  CustomItemConfig(
    icon: const Icon(Icons.home),
    title: "Feed",
    path: Assets.icons.feed.path,
  ),
  CustomItemConfig(
    icon: const Icon(Icons.home),
    title: "Aksi",
    path: Assets.icons.action.path,
  ),
  CustomItemConfig(
    icon: const Icon(Icons.home),
    title: "Wira Leader",
    path: Assets.icons.wireLeader.path,
  ),
  CustomItemConfig(
    icon: const Icon(Icons.home),
    title: "Akun",
    path: Assets.icons.account.path,
  ),
];

class CustomNavBar extends StatelessWidget {
  CustomNavBar({
    required this.navBarConfig,
    this.navBarDecoration = const NavBarDecoration(),
    super.key,
  }) : assert(
          navBarItem.length.isOdd,
          "The number of items must be odd for this style",
        );

  final NavBarConfig navBarConfig;
  final NavBarDecoration navBarDecoration;

  Widget _buildItem(
          BuildContext context, CustomItemConfig item, bool isSelected) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: SvgPicture.asset(
              item.path,
              color: isSelected ? ColorApp.red : ColorApp.grey,
              theme: SvgTheme(
                currentColor: isSelected ? ColorApp.red : ColorApp.grey,
              ),
            ),
          ),
          if (item.title != null)
            FittedBox(
              child: Text(
                item.title!,
                style: item.textStyle.apply(
                  color: isSelected ? ColorApp.red : ColorApp.grey,
                ),
              ),
            ),
        ],
      );

  Widget _buildMiddleItem(ItemConfig item, bool isSelected) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150,
            height: navBarConfig.navBarHeight,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: navBarDecoration.boxShadow,
            ),
            child: Center(
              child: SvgPicture.asset(
                Assets.icons.action.path,
                theme: SvgTheme(
                  currentColor: isSelected ? ColorApp.red : ColorApp.grey,
                ),
              ),
            ),
          ),
          if (item.title != null)
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: Text(
                    item.title!,
                    style: item.textStyle.apply(
                      color: isSelected ? ColorApp.red : ColorApp.grey,
                    ),
                  ),
                ),
              ),
            ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    final midIndex = (navBarItem.length / 2).floor();
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 23),
            DecoratedNavBar(
              decoration: navBarDecoration,
              filter: navBarConfig.selectedItem.filter,
              opacity: navBarConfig.selectedItem.opacity,
              height: navBarConfig.navBarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: navBarItem.map((item) {
                  final int index = navBarItem.indexOf(item);
                  return Expanded(
                    child: InkWell(
                      onTap: () {
                        navBarConfig.onItemSelected(index);
                      },
                      child: index == midIndex
                          ? Container()
                          : _buildItem(
                              context,
                              item,
                              navBarConfig.selectedIndex == index,
                            ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          child: Center(
            child: GestureDetector(
              onTap: () {
                showCupertinoModalBottomSheet(
                  context: context,
                  expand: false,
                  builder: (context) => Material(
                    child: SafeArea(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 5,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: ColorApp.lightGrey,
                              ),
                            ),
                            Gap.h20,
                            Text(
                              "Tambah Aksi",
                              style:
                                  TypographyApp.text1.black.fontSizeCustom(16),
                            ),
                            Gap.h8,
                            Text(
                              "Ada yang mau anda tambahkan?",
                              style: TypographyApp.text1.grey,
                            ),
                            Gap.h20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [  
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.komunitasSheet,
                                    text: "Komunitas",
                                    onTap: () {
                                      context
                                          .pushNamed(Routes.addCommunity.name);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.feedSheet,
                                    text: "Feed",
                                    onTap: () {
                                      Navigator.pop(context);
                                      context.pushNamed(Routes.createFeed.name);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.usahaSheet,
                                    text: "Usaha",
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.grupSheet,
                                    text: "Grup",
                                  ),
                                ),
                              ],
                            ),
                            Gap.h20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.eventSheet,
                                    text: "Event",
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.kelasSheet,
                                    text: "Kelas",
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.artikelSheet,
                                    text: "Artikel",
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.forumSheet,
                                    text: "Forum",
                                    onTap: () {
                                      Navigator.pop(context);
                                      context
                                          .pushNamed(Routes.createForum.name);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Gap.h20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.jobSheet,
                                    text: "Job",
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.projectSheet,
                                    text: "Project",
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.charitySheet,
                                    text: "Charity",
                                  ),
                                ),
                                Expanded(
                                  child: ActionSheetButton(
                                    svg: Assets.svgs.mentoringSheet,
                                    text: "Mentoring",
                                    onTap: () {
                                      Navigator.pop(context);
                                      context.pushNamed(
                                          Routes.createMentoring.name);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: _buildMiddleItem(
                navBarItem[midIndex],
                navBarConfig.selectedIndex == midIndex,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ActionSheetButton extends StatelessWidget {
  final VoidCallback? onTap;
  final SvgGenImage svg;
  final String text;
  const ActionSheetButton({
    super.key,
    this.onTap,
    required this.svg,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            svg.svg(width: SizeApp.w32, fit: BoxFit.fitWidth),
            Text(
              text,
              style: TypographyApp.subText1,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomItemConfig extends ItemConfig {
  CustomItemConfig({
    required super.icon,
    super.inactiveIcon,
    super.title,
    super.activeForegroundColor = CupertinoColors.activeBlue,
    super.inactiveForegroundColor = CupertinoColors.systemGrey,
    super.activeColorSecondary,
    super.inactiveBackgroundColor = Colors.transparent,
    super.opacity = 1.0,
    super.filter,
    super.textStyle = const TextStyle(
      color: CupertinoColors.systemGrey,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    super.iconSize = 26.0,
    this.path = "",
  });

  String path;
}

class CustomPersistentTabConfig extends PersistentTabConfig {
  CustomPersistentTabConfig({required super.screen, required super.item});
}

class CustomPersistentRouterTabConfig extends PersistentTabConfig {
  CustomPersistentRouterTabConfig({
    required super.item,
    super.onSelectedTabPressWhenNoScreensPushed,
  }) : super(screen: Container());
}

class CustomNavBarConfig extends NavBarConfig {
  CustomNavBarConfig(
      {required super.selectedIndex,
      required super.items,
      required super.onItemSelected});
}
