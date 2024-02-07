import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/home/BaseState.dart';
import 'package:sample/home/MyCubit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<MyCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Demo"),
      ),
      body: SafeArea(
        child: BlocConsumer<MyCubit, BaseState>(
          builder: (context, state) {
            if (state is ChangeState) {
              return Center(
                child: Text("Count :- ${cubit.count}"),
              );
            }
            return const Text("Not Pressed");
          },
          listener: (context, state) {},
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              cubit.incrementCount();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: () {
              cubit.decrementCount();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize_sharp),
          )
        ],
      ),
    );
  }
}
