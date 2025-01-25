
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/feature/Quran_app/cubit/ayat_sour_state.dart';
import 'package:quran_app/feature/Quran_app/data/ayaSourData.dart';

class AyatSourCubit extends Cubit<AyatSourState> {
  AyatSourCubit() : super(AyatSourInitial());

   
  void getPage() {
    emit(AyatSourLoading(sourList));
  }
}
