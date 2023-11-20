import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/routes/app_router.dart';
import 'package:health_app/screens/home_screen.dart';
import 'package:health_app/user_info.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';
import 'package:health_app/widgets/save_button.dart';
import 'package:health_app/widgets/user_input_field.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(.1),
              ),
              child: IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () {
                  // Navigator.pop(context);
                  context.router.pop(const ProfileRoute());
                },
              ),
            ),
            userProfileIcon(),
            const SizedBox(
              height: 20,
            ),
            userBasicDetails(),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              height: size.height * .55,
              width: size.width,
              // color: Colors.blue,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return UserInputField(
                    // textFieldEnabled: isEnabled,
                    size: size,
                    indX: index,
                    label: userInfo.keys.elementAt(index),
                    hintText: userInfo.values.elementAt(index),
                    // userInfo: userInfo,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: 7,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SaveButton(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Column userBasicDetails() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppLargeText(
          text: 'Vikram Naik',
          fontSize: 24,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: 'AGE: 19',
              fontSize: 11,
              color: Colors.black54,
            ),
            SizedBox(
              width: 10,
            ),
            AppText(
              text: 'GENDER: MALE',
              fontSize: 11,
              color: Colors.black54,
            ),
          ],
        ),
      ],
    );
  }

  Center userProfileIcon() {
    return Center(
      child: Stack(
        children: [
          SvgPicture.asset('assets/icons/outerProfile.svg'),
          Positioned(
            bottom: 0,
            left: 24,
            child: SvgPicture.asset('assets/icons/innerFprofile.svg'),
          ),
          Positioned(
            top: 30,
            left: 46,
            child: SvgPicture.asset('assets/icons/innerSprofile.svg'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset('assets/icons/profileEllipse.svg'),
          ),
          Positioned(
            bottom: 1,
            right: 3,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Edit.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
