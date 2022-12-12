import 'package:flutter/material.dart';
import 'package:maxidigital_case/app/components/app_button.dart';
import 'package:maxidigital_case/app/components/user_list_item.dart';
import 'package:maxidigital_case/view/invite/_widget/heading_widget.dart';

class InviteView extends StatelessWidget {
  const InviteView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double headingHeight = size.height * .35;
    const double bodyPadding = 20;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: size.height, width: size.width),
          HeadingWidget(headingHeight: headingHeight),
          Positioned(
            left: 0,
            right: 0,
            top: headingHeight - 60,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: bodyPadding + 4),
                  child: Text("Invited", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
                    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => UserListItem(),
                    itemCount: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: bodyPadding + 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          color: Colors.grey.shade300,
                          child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                child: Column(
                                  children: [
                                    Icon(Icons.file_copy, color: Theme.of(context).primaryColor),
                                    const SizedBox(height: 8),
                                    Text(
                                      "Terms & Conditions",
                                      style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Material(
                          color: Colors.grey.shade300,
                          child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                child: Column(
                                  children: [
                                    Icon(Icons.file_copy, color: Theme.of(context).primaryColor),
                                    const SizedBox(height: 8),
                                    Text(
                                      "Terms & Conditions",
                                      style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: bodyPadding - 8),
                    child: AppButton(buttonText: 'Invite', onTap: () {}),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
