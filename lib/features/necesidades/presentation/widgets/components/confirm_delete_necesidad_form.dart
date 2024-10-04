import 'package:flutter/material.dart';
import 'package:registro_uci/features/necesidades/data/providers/necesidades_de_registro_provider.dart';
import 'package:registro_uci/features/necesidades/presentation/widgets/components/buttons/delete_necesidad_form_button.dart';

class ConfirmDeleteNecesidadForm extends StatelessWidget {
  const ConfirmDeleteNecesidadForm({
    super.key,
    required this.idNecesidad,
    required this.params,
  });

  final String idNecesidad;
  final NecesidadesParams params;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Title
          Text(
            "Confirmar Eliminación",
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          // Body
          Text(
            "¿Estás seguro de que deseas eliminar esta necesidad?",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),

          // Delete Button
          DeleteNecesidadFormButton(
            idNecesidad: idNecesidad,
            params: params,
          ),
        ],
      ),
    );
  }
}