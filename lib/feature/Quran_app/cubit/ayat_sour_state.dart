

// sealed class AyatSourState {}

// final class AyatSourInitial extends AyatSourState {}

// final class AyatSourLoadding extends AyatSourState {
//   final List<sourList> AyatSour;
//   AyatSourLoadding(this.AyatSour);
// }
import 'package:quran_app/feature/Quran_app/models/ayatSourModel.dart';

sealed class AyatSourState {}

final class AyatSourInitial extends AyatSourState {}

final class AyatSourLoading extends AyatSourState {
  final List<Surah> AyatSour;
  AyatSourLoading(this.AyatSour);
}