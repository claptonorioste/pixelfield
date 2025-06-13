import 'package:flutter/material.dart';
import 'package:pixelfield/domain/entities/bottle.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key, required this.bottle});
  final Bottle bottle;

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 1),
          _buildDetailRow('Distillery', bottle.distillery),
          _buildDetailRow('Region', bottle.region),
          _buildDetailRow('Country', bottle.country),
          _buildDetailRow(
            'Age Statement',
            bottle.ageStatement.isNotEmpty
                ? '${bottle.ageStatement} years'
                : 'N/A',
          ),
          _buildDetailRow('Filled', '${bottle.filled}'),
          _buildDetailRow('Bottle', '${bottle.bottle}'),
          _buildDetailRow(
            'Cask Number',
            bottle.caskNumber.isNotEmpty ? bottle.caskNumber : 'N/A',
          ),
          _buildDetailRow('ABV', '${bottle.abv}%'),
          _buildDetailRow('Size', bottle.size),
          _buildDetailRow('Finish', bottle.finish),
        ],
      ),
    );
  }
}
