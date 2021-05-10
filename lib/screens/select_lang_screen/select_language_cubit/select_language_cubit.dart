import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matger/models/language_model.dart';
import 'package:matger/screens/select_lang_screen/select_language_cubit/select_language_states.dart';

class LanguageCubit extends Cubit<LanguageStates> {
  LanguageCubit() : super(InitialLanguageState());

  static LanguageCubit get(context) => BlocProvider.of(context);
  
  List<LanguageModel> languageList = [
    LanguageModel(languageName: 'English', languageCode: 'en', isSelected: false),
    LanguageModel(languageName: 'العربية', languageCode: 'ar', isSelected: false),
  ];

  int selectedLanguageIndex;

  void changeSelectedLanguage({@required int index}) {
    selectedLanguageIndex = index;

    for (int i = 0; i < languageList.length; i++) {
      if (i == index) {
        languageList[i].isSelected = true;
      } else {
        languageList[i].isSelected = false;
      }
    }

    emit(SelectLanguageState());
  }
}
