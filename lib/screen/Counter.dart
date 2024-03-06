import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_events.dart';
import '../bloc/bloc_main.dart';
import '../bloc/bloc_state.dart';

class counter_app extends StatefulWidget {
  const counter_app({super.key});

  @override
  State<counter_app> createState() => _counter_appState();
}

class _counter_appState extends State<counter_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: BlocBuilder<bloc_main,int>(
      builder:(context,state){
        if(state is loading)
          {
            return Text("state is at loading state");
          }
        else if(state is loaded){
          return Text("State at loaded state");
        }
        else{
          return Center(
            child: Text(state.toString()),
          );
        }
      },
    ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed:(){
              context.read<bloc_main>().add(decrement());
            },
            child: Icon(Icons.minimize),
          ),
          SizedBox(
            height: 12,
          ),
          FloatingActionButton(
            onPressed:(){
              context.read<bloc_main>().add(increment());
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
