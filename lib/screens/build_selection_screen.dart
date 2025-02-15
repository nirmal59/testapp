import 'package:flutter/material.dart';

class BuildSelectionScreen extends StatelessWidget {
  const BuildSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Build Type')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/build_selection_bg.jpg'), // Ensure this image exists in assets folder
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildTile(context, 'Gaming', 'assets/gaming.jpg'),
            _buildTile(context, 'Workstation', 'assets/workstation.jpg'),
            _buildTile(context, 'Editing', 'assets/editing.jpg'),
            _buildTile(context, 'AI', 'assets/ai.jpg'),
            _buildTile(context, 'Custom Build', 'assets/custom.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, String title, String imagePath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
