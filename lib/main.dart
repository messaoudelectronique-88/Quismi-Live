import 'package:flutter/material.dart';

void main() => runApp(QismiLiveApp());

class QismiLiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qismi Live',
      home: DashboardProf(),
    );
  }
}

class DashboardProf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.blue,
              child: Text("P", style: TextStyle(color: Colors.white, fontSize: 22)),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bonjour, Prof. Belferroum!",
                  style: TextStyle(color: Color(0xFF1A237E), fontSize: 16, fontWeight: FontWeight.bold)),
                Text("Prof de Math — Qismi Live",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Vue d'ensemble", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Row(children: [
              _card("Classes Actives", "5"),
              SizedBox(width: 10),
              _card("Élèves", "120"),
              SizedBox(width: 10),
              _card("Présence", "92%"),
            ]),
            SizedBox(height: 24),
            Text("Aujourd'hui", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            _cours("Algèbre — 3ème année", "14:00 - 15:30 • Salle 12", "Bientôt"),
            SizedBox(height: 10),
            _cours("Géométrie — 4ème année", "16:00 - 17:30 • Salle 08", "À venir"),
          ],
        ),
      ),
    );
  }

  Widget _card(String title, String value) => Expanded(
    child: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Color(0xFFD6E4FF), borderRadius: BorderRadius.circular(16)),
      child: Column(children: [Text(title, fontSize: 12), SizedBox(height: 8), Text(value, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)))]),
    ),
  );

  Widget _cours(String matiere, String horaire, String statut) => Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
    child: Row(children: [
      Icon(Icons.school, color: Colors.blue),
      SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(matiere, style: TextStyle(fontWeight: FontWeight.bold)), Text(horaire, style:
