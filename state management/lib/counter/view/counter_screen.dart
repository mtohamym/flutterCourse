import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangment/counter/view_model/counter_cubit.dart';
import 'package:state_mangment/counter/view_model/counter_state.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app"),
        centerTitle: true,
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => CounterCubit(),
          child: BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              if (state is CounterIncrease) {
                showTopSnackBar(
                  Overlay.of(context),
                  CustomSnackBar.success(
                    message: "Count Increase ${state.count}",
                  ),
                );
              }
              if (state is CounterDecrease) {
                showTopSnackBar(
                  Overlay.of(context),
                  CustomSnackBar.error(
                    message: "Count Decreased",
                  ),
                );
              }
            },
            builder: (context, state) {
              CounterCubit myCubit = CounterCubit.get(context);
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Text(myCubit.count.toString()),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     IconButton(
                  //       onPressed: () {
                  //         myCubit.increaseCount();
                  //       },
                  //       icon: const Icon(
                  //           CupertinoIcons.plus
                  //       ),
                  //     ),
                  //     IconButton(
                  //       onPressed: () {
                  //         myCubit.desreaseCount();
                  //       },
                  //       icon: const Icon(
                  //           CupertinoIcons.minus
                  //       ),
                  //     ),
                  //   ],
                  // )



                  GestureDetector(
                      onTap: () {
                        myCubit.tap();
                      },
                      onDoubleTap: () {
                        myCubit.doubleTap();
                      },
                    onLongPress:(){
                      myCubit.onHold();
                    } ,
                      child:  AnimatedContainer(
                        width: myCubit.containerW,
                        height: myCubit.containerH,
                        color: myCubit.color, duration: Duration(milliseconds: 200),
                      ),)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
