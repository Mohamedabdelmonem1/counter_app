import 'package:basketball_counter_app/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class Basketball extends StatefulWidget {
  const Basketball({super.key});

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text("Points Counter"),
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamA}",
                          style: const TextStyle(
                              fontSize: 140, fontWeight: FontWeight.bold),
                        ),
                        CustomButton(
                          text: "Add 1 Point",
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', num: 1);
                          },
                        ),
                        CustomButton(
                          text: "Add 2 Point",
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', num: 2);
                          },
                        ),
                        CustomButton(
                          text: "Add 3 Point",
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', num: 3);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 340,
                      child: VerticalDivider(
                        thickness: 3,
                        color: Colors.green,
                        width: 40,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamB}",
                          style: const TextStyle(
                              fontSize: 140, fontWeight: FontWeight.bold),
                        ),
                        CustomButton(
                          text: "Add 1 Point",
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', num: 1);
                          },
                        ),
                        CustomButton(
                          text: "Add 2 Point",
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', num: 2);
                          },
                        ),
                        CustomButton(
                          text: "Add 3 Point",
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', num: 3);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).teamA = 0;
                    BlocProvider.of<CounterCubit>(context).teamB = 0;
                    setState(() {});
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
