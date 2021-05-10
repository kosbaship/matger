import 'package:get_it/get_it.dart';
import 'package:matger/screens/select_lang_screen/select_language_cubit/select_language_cubit.dart';

GetIt di = GetIt.I..allowReassignment = true;
Future singletonsInitialization() async {
  di.registerFactory<LanguageCubit>(() => LanguageCubit());
}
