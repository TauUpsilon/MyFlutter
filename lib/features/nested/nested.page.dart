import 'package:auto_route/auto_route.dart';
import 'package:eyr/app/app.widget.gr.dart';
import 'package:eyr/shares/mixins/common_functionable.mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/utils.dart';

part 'nested.cubit.dart';
part 'nested.state.dart';

@RoutePage()
class NestedPage extends StatelessWidget
    with CommonFunctionable
    implements AutoRouteWrapper {
  NestedPage();

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => NestedCubit(),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
