import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class NotificationPages extends StatelessWidget {
  const NotificationPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notification"),
          iconTheme: const IconThemeData(color: ColorApp.grey),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(8),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 1,
                  color: ColorApp.grey,
                ),
              ],
            ),
          ),
        ),
        body: PaddingWidget(
            child: Column(
          children: [
            Gap.h16,
            const NotificationOptions(
              title: "Product updates",
              desc: "Stair Lifts Feel The Freedom Of \nYour Home",
            ),
            Gap.h16,
            const CustomDivider(),
            Gap.h16,
            const NotificationOptions(
              title: "Offer updates",
              desc: "A Right Media Mix Can Make The \nDifference",
            ),
            Gap.h16,
            const CustomDivider(),
            Gap.h16,
            const NotificationOptions(
              title: "Comments",
              desc: "Advertising Relationships Vs \nBusiness Decisions",
            ),
            Gap.h16,
            const CustomDivider(),
            Gap.h16,
            const NotificationOptions(
              title: "Notifications",
              desc:
                  "Creating Remarkable Poster Prints \nThrough 4 Color Poster Printing",
            ),
            Gap.h16,
            const CustomDivider(),
            Gap.h16,
          ],
        )));
  }
}

class NotificationOptions extends StatelessWidget {
  final String title;
  final String desc;

  const NotificationOptions({
    required this.title,
    required this.desc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorApp.scaffold,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(title, style: TypographyApp.headline3.fontSizeCustom(15)),
                Gap.h4,
                Text(
                  desc,
                  style: TypographyApp.text1,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const ToggleSwitch(),
          Gap.h16
        ],
      ),
    );
  }
}

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool _isSwitched = false;

  void _toggleSwitch() {
    setState(() {
      _isSwitched = !_isSwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: Container(
        width: 60,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _isSwitched ? Colors.blue : Colors.grey,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              left: _isSwitched ? 30 : 0,
              right: _isSwitched ? 0 : 30,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
