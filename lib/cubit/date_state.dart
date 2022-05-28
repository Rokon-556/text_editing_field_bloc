part of 'date_cubit.dart';

@immutable
abstract class DateState {}

class DateInitial extends DateState {
  final String firstDate;
  final String lastDate;
  DateInitial({required this.firstDate,required this.lastDate});
}
