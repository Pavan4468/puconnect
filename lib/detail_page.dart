import 'package:flutter/material.dart';
import 'connect.dart'; // Import the ConnectPage

class DetailPage extends StatelessWidget {
  final String imagePath;
  final String imageName;
  final String imageDescription;

  const DetailPage({
    required this.imagePath,
    required this.imageName,
    required this.imageDescription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Define unique consultation details for each category
    final Map<String, String> consultationInfo = {
      "Artificial Intelligence": "For AI king, consult Prof. John Doe at the Computer Science Department, Room 301.",
      "Web Development": "For Web Development, consult Ms. Jane Smith in the IT Department, Room 202.",
      "Virtual Reality": "For Virtual Reality, reach out to Dr. Alex Green at the VR Lab, Room 404.",
      "App Development": "For App Development guidance, consult Mr. Robert Lee in the Mobile Tech Department, Room 505.",
      "Cloud 2": "For Cloud-related inquiries, meet Dr. Emma Davis in the Cloud Tech Division, Room 303.",
      "I O T": "For IoT, consult Ms. Laura White at the IoT Innovation Center, Room 208.",
      "Data Science": "For Data Science studies, consult Mr. David Martin in the Data Analytics Department, Room 609.",
      "Cyber Security": "For Cyber Security, reach out to Mr. Michael Brown at the Cyber Defense Center, Room 706.",
      "DevOps": "For DevOps, meet Mr. Kevin Grey in the DevOps Hub, Room 507.",
      "Game development": "For Game Development, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "Career Development": "For Career Development, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "Placement Training": "For Placement Training, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "Resume Building": "For Resume Building, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "Research and Paper Publishing":"For Resume Building, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "Book Publishing":"For Resume Building, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "Conferences":"For Resume Building, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          imageName,
          style: const TextStyle(color: Color(0xFF003366)),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xFF003366),
        ),
      ),
      backgroundColor: const Color(0xFF003F63),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              imageName,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              imageDescription,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Consultation Information",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003F63),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    consultationInfo[imageName] ?? "Consultation details not available.",
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF003F63),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ConnectPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Connect",
                  style: TextStyle(color: Color(0xFF003F63), fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}