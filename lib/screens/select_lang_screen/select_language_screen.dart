import 'package:flutter/material.dart';
import 'package:matger/shared/app_colors.dart';
import 'package:matger/shared/app_enums.dart';
import 'package:matger/shared/app_strings.dart';
import 'package:matger/shared/app_text_styles.dart';
import 'package:matger/shared/app_widgets.dart';
import 'package:matger/shared/helper_methods.dart';

class SelectLanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all( 20.0),
                color: kDefaultColor,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        kChooseEnglish,
                        style: kWhite18regular(),
                        textDirection: TextDirection.ltr,

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        kChooseArabic,
                        style: kWhite18regular(),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) => LanguageListItem(
                      languageName: 'Arabic',
                      onTap: () {},
                      isSelected: true,
                    ),
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: DefaultSeparator(),
                    ),
                    itemCount: 2,
                  ),
                ),
              ),
              DefaultButton(
                onPress: () {
                  showToast(
                    text: 'please select a language then press done',
                    color: ToastColors.WARNING,
                  );
                },
                title: 'Done',
              ),
            ],
          ),
        ),
      );
}
