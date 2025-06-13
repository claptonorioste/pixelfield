import 'package:flutter/material.dart';
import 'package:pixelfield/app/utils/colors.dart';
import 'package:pixelfield/domain/entities/bottle.dart';

class TastingNoteTab extends StatelessWidget {
  const TastingNoteTab({super.key, required this.bottle});
  final Bottle bottle;

  Widget _buildNoteContainer({
    required String title,
    required String description,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(tabBgColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(darkColor)),
            child: Center(
              child: Icon(Icons.play_arrow, color: Colors.white, size: 40),
            ),
          ),
          Text('Tasting notes', style: TextStyle(fontSize: 16)),

          Text(
            'by ${bottle.tastingNotes[0].author}',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          _buildNoteContainer(
            title: 'Nose',
            description: bottle.tastingNotes[0].notes['nose'] ?? '',
          ),
          SizedBox(height: 10),
          _buildNoteContainer(
            title: 'Palate',
            description: bottle.tastingNotes[0].notes['palate'] ?? '',
          ),
          SizedBox(height: 10),
          _buildNoteContainer(
            title: 'Finish',
            description: bottle.tastingNotes[0].notes['finish'] ?? '',
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Your Notes'),
              Icon(Icons.arrow_back, color: Colors.white),
            ],
          ),
          SizedBox(height: 10),
          _buildNoteContainer(title: 'Nose', description: 'Description'),
          SizedBox(height: 10),
          _buildNoteContainer(title: 'Palate', description: 'Description'),
          SizedBox(height: 10),
          _buildNoteContainer(title: 'Finish', description: 'Description'),
        ],
      ),
    );
  }
}
