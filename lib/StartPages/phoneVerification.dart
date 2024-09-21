import 'package:flutter/material.dart';

class phoneverification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/emdad_logo.png', // Place your logo asset path here
          height: 50,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'التحقق من رقم الجوال',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            // Assuming placeholders for images/icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  4, (index) => Icon(Icons.check_box_outline_blank, size: 40)),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed:
                  () {}, // Add functionality for what should happen when button is pressed
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 80),
              ),
              child: Text(
                'التحقق',
                style: TextStyle(fontSize: 18),
              ),
            ),
            TextButton(
              onPressed: () {}, // Add functionality here as well
              child: Text('أعد إرسال الرمز'),
            ),
          ],
        ),
      ),
    );
  }
}
