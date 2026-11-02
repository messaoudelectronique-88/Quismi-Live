import 'package:flutter/material.dart';

void main() => runApp(QismiLiveApp());

class QismiLiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qismi Live',
      theme: ThemeData(primaryColor: Color(0xFF1A237E)),
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
        toolbarHeight: 80,
        title: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Color(0xFF1A237E),
              child: Text("P", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bonjour, Prof. Belferroum!",
                    style: TextStyle(color: Color(0xFF1A237E), fontSize: 18, fontWeight: FontWeight.bold)),
                Text("Prof de Math — Qismi Live",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 13)),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Vue d'ensemble", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1A237E))),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: _card("Classes Actives", "5", Icons.class_)),
                SizedBox(width: 12),
                Expanded(child: _card("Élèves", "120", Icons.people)),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: _card("Présence Aujourd'hui", "92%", Icons.check_circle)),
                SizedBox(width: 12),
                Expanded(child: _card("Devoirs", "3 à corriger", Icons.assignment)),
              ],
            ),
            SizedBox(height: 24),
            Text("Aujourd'hui", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            _todayTile("8h00 - 10h00", "1ère Année Math", "Salle 12", Colors.blue),
            _todayTile("10h15 - 12h15", "2ème Année Physique", "Salle 8", Colors.orange),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1A237E),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                ),
                onPressed: () {},
                child: Text("Démarrer un Cours Live", style: TextStyle(fontSize: 16)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _card(String title, String value, IconData icon) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Color(0xFF1A237E)),
          SizedBox(height: 8),
          Text(title, style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 4),
          Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1A237E))),
        ],
      ),
    );
  }

  Widget _todayTile(String time, String classe, String salle, Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border(left: BorderSide(color: color, width: 5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(time, style: TextStyle(fontWeight: FontWeight.bold)),
            Text("$classe • $salle", style: TextStyle(color: Colors.grey)),
          ]),
          Icon(Icons.videocam, color: color)
        ],
      ),
    );
  }
}
