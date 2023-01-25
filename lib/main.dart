import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:hydrated_bloc_enum_to_interface_completed_code/item.dart';
import 'package:hydrated_bloc_enum_to_interface_completed_code/subject_bloc.dart';
import 'package:hydrated_bloc_enum_to_interface_completed_code/subject_event.dart';
import 'package:hydrated_bloc_enum_to_interface_completed_code/subject_state.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await initializeHydratedStorage();

  runApp(const DIProviderTree());
}

Future<HydratedStorage> initializeHydratedStorage() async {
  return HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
}

class DIProviderTree extends StatelessWidget {
  const DIProviderTree({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SubjectBloc>(
          create: (context) => SubjectBloc(),
        ),
      ],
      child: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              context
                  .read<SubjectBloc>()
                  .add(AddOneToAllSelectedSubjectsEvent());
            },
          ),
          body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            DisplayCircleAvatar(),
            ChipsHolder(),
          ],
        ),
      )),
    );
  }
}

class ChipsHolder extends StatelessWidget {
  const ChipsHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: [Item.magic(), Item.sharp()].map((Item enumValue) {
      return SubjectChip(item: enumValue);
    }).toList());
  }
}

class SubjectChip extends StatelessWidget {
  const SubjectChip({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubjectBloc, SubjectState>(
      builder: (context, state) {
        return ActionChip(
          backgroundColor:
              state.selectedSubjects.contains(item) ? Colors.green : Colors.red,
          label: Text(item.name),
          onPressed: () {
            context.read<SubjectBloc>().add(ModifySelectionSubjectEvent(item));
          },
        );
      },
    );
  }
}

class DisplayCircleAvatar extends StatelessWidget {
  const DisplayCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: Colors.blue,
      child: Text(context
          .watch<SubjectBloc>()
          .state
          .selectedSubjects
          .fold(0, (sum, item) => sum + item.damage)
          .toString()),
    );
  }
}
