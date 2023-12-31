import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/presentation/providers/providers.dart';
import 'package:plantify/presentation/widgets/widgets.dart';

class ConfigView extends ConsumerWidget implements PreferredSizeWidget {
  const ConfigView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyles = Theme.of(context).textTheme;
    final isDarkMode = ref.watch(darkModeProvider);

    return Scaffold(
      appBar: const CustomAppbar(title: 'Configuración'),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const SizedBox(
            height: 5,
          ),
          SwitchListTile(
            title: Text(
              'Modo oscuro',
              style: textStyles.titleLarge,
            ),
            value: isDarkMode,
            onChanged: (value) {
              ref.read(darkModeProvider.notifier).toogleDarkMode();
            },
          ),
          ListTile(
            title: Text('Cambiar tema', style: textStyles.titleLarge,),
            onTap: () {
              colorPickerDialog(context, ref);
            },
          )
        ],
      ),
    );
  }
  
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

Future colorPickerDialog(BuildContext context, WidgetRef ref) {
  final colors = Theme.of(context).colorScheme;
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      content: SingleChildScrollView(
        child: BlockPicker(
          availableColors: const [
            Color(0xff29B6F6),
            Color(0xff4CAF50),
            Color(0xffF57F17),
            Color(0xffD50000),
          ],
          pickerColor: colors.primary,
          onColorChanged: (value) {
            ref.read(selectedColorProvider.notifier).changeSelectedColor(value);
          },
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0)),
              padding: const EdgeInsets.only(
                  left: 30.0, top: 0.0, right: 30.0, bottom: 0.0)),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text('CERRAR', style: TextStyle(color: colors.primary)),
        ),
      ],
    ),
  );
}
