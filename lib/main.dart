import 'package:bloc_date/cubit/date_cubit.dart';
import 'package:bloc_date/models/date_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DateCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {


  TextEditingController _currentDateController = TextEditingController();

  TextEditingController _nextDateController = TextEditingController();

  // const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Bloc Date Picker'),),
        body: BlocBuilder<DateCubit, DateModel>(
          builder: (context, state) {
            _currentDateController.text=state.firstDate.toString();
            _nextDateController.text=state.nextDate.toString();
            return Column(children: [
              TextField(controller: _currentDateController,),
              TextField(controller: _nextDateController,),
              ElevatedButton(onPressed: ()=>context.read<DateCubit>().getCurrentDate(),
             // ElevatedButton(onPressed: ()=>context.read<DateCubit>().getNextDate(),
                   child: Text('Change Date'))
            ],);
          },
        )
    );
  }
}

