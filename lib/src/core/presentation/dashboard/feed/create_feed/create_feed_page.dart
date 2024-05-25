import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/widgets/widgets.dart';

class CreateFeedPage extends StatelessWidget {
  const CreateFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buat Feed"),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        backgroundColor: ColorApp.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorApp.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        surfaceTintColor: ColorApp.white,
        actions: [
          Gap.w16,
          Padding(
            padding: EdgeInsets.symmetric(vertical: SizeApp.h4),
            child: ButtonWidget.secondary(
              text: "BATAL",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Gap.w16,
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: CustomDivider(),
        ),
      ),
      body: Container(
        color: ColorApp.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputFormWidget(
              controller: TextEditingController(),
              hintText: "Write post",
              maxLines: 5,
            ),
            Gap.h16,
            Row(
              children: [
                Assets.svgs.link.svg(),
                Gap.w16,
                Assets.svgs.image.svg(),
                Gap.w16,
                Assets.svgs.emoji.svg(),
                Gap.w16,
                Assets.svgs.attachment.svg(),
                Gap.w16,
                const Spacer(),
                ButtonWidget.primary(
                  text: "POST",
                  onTap: () {
                    context.goNamed(Routes.feed.name);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
