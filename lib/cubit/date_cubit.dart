import 'package:bloc/bloc.dart';
import 'package:bloc_date/models/date_model.dart';
import 'package:meta/meta.dart';

part 'date_state.dart';

class DateCubit extends Cubit<DateModel> {
  DateCubit() : super(DateModel('', ''));
  void getCurrentDate(){
     emit(DateModel(DateTime.now().toString(), DateTime.now().add(Duration(days: 7)).toString()));
  }
 // void getDate()=>emit(DateLoadedState(firstDate: DateTime.now().toString(), lastDate: DateTime.now().add(Duration(days: 7)).toString()));
 //  void getNextDate(String today,String nextday){
 //    emit(DateTime.now().add(Duration(days: 7)).toString());
 //    emit(DateTime.now().toString());
 //
 //  }
}
