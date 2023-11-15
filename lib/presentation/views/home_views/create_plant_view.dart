import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/presentation/widgets/widgets.dart';

class CreatePlantView extends StatelessWidget {
  const CreatePlantView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const CustomAppbar(title: 'Crear planta'),
          body: _PlantForm()),
    );
  }
}

class _PlantForm extends ConsumerWidget {
  //final Plant plant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkMode = ref.watch(darkModeProvider);
    final colors = Theme.of(context).colorScheme;
    final textStyles = Theme.of(context).textTheme;
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Información de la planta',
              style: textStyles.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormField(
                isTopField: true,
                hint: 'Nombre de la planta',
                hintStyle: TextStyle(
                  color: Colors.black45,
                )),
            CustomFormField(
              hint: 'Hora de riego',
              hintStyle: TextStyle(color: Colors.black45),
            ),
            CustomFormField(
              hint: 'Información adicional',
              isBottomField: true,
              maxLines: 7,
              hintStyle: TextStyle(color: Colors.black45),
            ),
            const SizedBox(height: 10,),
            Center(
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.add_box_outlined, size: 70, color: colors.secondary,)),
            ),
          ],
        ),
      ),
    ]);
  }
}
