import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_events.dart';

class bloc_main extends Bloc<counter_events,int>{
  bloc_main():super(0){
    on<increment>((event, emit) {
      emit(state+1);
      log("on click");
    });
    on<decrement>((event, emit) {
      if (state == 0)
    {}
      else{
        emit(state-1);
      }
    });
  }
}