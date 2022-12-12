import 'package:flutter/material.dart';
import 'package:maxidigital_case/app/components/app_button.dart';
import 'package:maxidigital_case/app/components/user_list_item.dart';
import 'package:maxidigital_case/view/invite/_widget/heading_widget.dart';
import 'package:maxidigital_case/view/invite/invite_viewmodel.dart';

import '../../app/base/base_view.dart';

class InviteView extends StatelessWidget {
  const InviteView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double headingHeight = size.height * .35;
    const double bodyPadding = 20;

    return Scaffold(
      body: BaseView<InviteViewModel>(
        onModelReady: (model) => model.fetchData(),
        builder: (context, model, _) {
          if (model.hasError) return Center(child: Text(model.errorMessage.toString()));
          if (model.isLoading) return const Center(child: CircularProgressIndicator());

          return Stack(
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
                    _userList(model),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: bodyPadding + 4),
                      child: Row(
                        children: [
                          _bottomButton(context, 'Terms&Conditions', Icons.file_copy),
                          const SizedBox(width: 12),
                          _bottomButton(context, 'How it Works', Icons.question_mark_outlined),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    _inviteButton(bodyPadding, model),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Expanded _userList(InviteViewModel model) {
    return Expanded(
      child: ListView.separated(
        physics: const ClampingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        shrinkWrap: true,
        itemBuilder: (context, index) => UserListItem(key: Key('$index'), user: model.users.elementAt(index), isLastItem: model.users.length - 1 == index),
        itemCount: model.users.length,
      ),
    );
  }

  SafeArea _inviteButton(double bodyPadding, InviteViewModel model) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: bodyPadding - 8),
        child: AppButton(
            buttonText: 'Invite',
            onTap: () {
              model.toggleLoading(true);
            }),
      ),
    );
  }

  Expanded _bottomButton(BuildContext context, String title, IconData icon) {
    return Expanded(
      child: Material(
        color: Colors.grey.shade300,
        child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Icon(icon, color: Theme.of(context).primaryColor),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
