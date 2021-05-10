import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matger/models/language_model.dart';
import 'package:matger/screens/select_lang_screen/select_language_cubit/select_language_cubit.dart';
import 'package:matger/screens/select_lang_screen/select_language_cubit/select_language_states.dart';
import 'package:matger/shared/app_colors.dart';
import 'package:matger/shared/app_enums.dart';
import 'package:matger/shared/app_strings.dart';
import 'package:matger/shared/app_text_styles.dart';
import 'package:matger/shared/app_widgets.dart';
import 'package:matger/shared/helper_methods.dart';

class SelectLanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocProvider(
          create: (context) => LanguageCubit(),
          child: BlocBuilder<LanguageCubit, LanguageStates>(
            builder: (context, state) => SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
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
                          languageName: LanguageCubit.get(context)
                              .languageList[index]
                              .languageName,
                          onTap: () {
                            LanguageCubit.get(context)
                                .changeSelectedLanguage(index: index);
                          },
                          isSelected: LanguageCubit.get(context)
                              .languageList[index]
                              .isSelected,
                        ),
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: DefaultSeparator(),
                        ),
                        itemCount:
                            LanguageCubit.get(context).languageList.length,
                      ),
                    ),
                  ),
                  DefaultButton(
                    onPress: () {
                      int selectedIndex =
                          LanguageCubit.get(context).selectedLanguageIndex;
                      LanguageModel languageModel = LanguageCubit.get(context)
                          .languageList[selectedIndex];
                      print(
                          '==================> ' + languageModel.languageName);
                      print(
                          '==================> ' + languageModel.languageCode);
                      print('==================> ' +
                          languageModel.isSelected.toString());
                      if (selectedIndex == null) {
                        showToast(
                          text: 'please select a language then press done',
                          color: ToastColors.WARNING,
                        );
                      } else {
                        // LanguageModel languageModel = LanguageCubit.get(context).languageList[selectedIndex];
                        // print(languageModel.languageCode);
                        //
                        // setAppLanguageToShared(languageModel.languageCode)
                        //     .then((value)
                        // {
                        //   getTranslationFile(languageModel.code).then((value)
                        //   {
                        //     AppCubit.get(context).setLanguage(
                        //       translationFile: value,
                        //       code: languageModel.code,
                        //     ).then((value)
                        //     {
                        //       navigateAndFinish(
                        //         context,
                        //         OnBoardScreen(),
                        //       );
                        //     });
                        //   }).catchError((error) {});
                        // })
                        //     .catchError((error) {});
                      }
                    },
                    title: 'Done',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
