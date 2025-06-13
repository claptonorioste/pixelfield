import 'package:flutter/material.dart';
import 'package:pixelfield/domain/entities/bottle.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key, required this.bottle});
  final Bottle bottle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Distillery',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                bottle.distillery,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Region',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                bottle.region,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Country',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                bottle.country,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Age Statement',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                bottle.ageStatement.isNotEmpty
                    ? '${bottle.ageStatement} years'
                    : 'N/A',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Filled',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                '${bottle.filled}',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bottle',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                '${bottle.bottle}',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cask Number',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                bottle.caskNumber.isNotEmpty ? bottle.caskNumber : 'N/A',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ABV',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                '${bottle.abv}%',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Size',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                bottle.size,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Finish',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text(
                bottle.finish,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
