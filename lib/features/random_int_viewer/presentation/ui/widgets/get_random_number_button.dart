import 'package:flutter/material.dart';
import 'package:flutter_clean_template/core/ui/dependent_stateless_widget.dart';
import 'package:flutter_clean_template/features/random_int_viewer/presentation/logic/random_int_viewer_cubit.dart';

class GetRandomNumberButton
    extends DependentStatelessWidget<RandomIntViewerCubit, RandomIntViewerState> {

  const GetRandomNumberButton({super.key});

  @override
  Widget builder(
    BuildContext context,
    RandomIntViewerCubit cubit,
    RandomIntViewerState state,
  ) {
    return TextButton(
      onPressed: cubit.onTapGetRandomNumber,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'GET RANDOM NUMBER',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          const SizedBox(width: 4),
          state.requestStatus.when(
            notStarted: () => const SizedBox.shrink(),
            failed: () => const SizedBox.shrink(),
            cancelled: () => const SizedBox.shrink(),
            inProgress: () => Container(
              width: 23,
              height: 16,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: const CircularProgressIndicator(strokeWidth: 3),
            ),
            completed: () => Text(
              '[${state.timerCounter}]',
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
