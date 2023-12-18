import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerbsPage extends StatefulWidget {
  const VerbsPage({super.key});

  @override
  State<VerbsPage> createState() => _VerbsPageState();
}

class _VerbsPageState extends State<VerbsPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage('assets/images/logo.jpg'),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 198, 11, 30),
            ),
            child: Center(
              child: Text(
                'Odmiana czasowników',
                style: GoogleFonts.bebasNeue(
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: screenWidth / 12),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(9),
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
              color: Color(0xFFe78d01),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            child: Expanded(
              child: Text(
                'Kiedy rozpoczynamy naukę języka hiszpańskiego, jednym z pierwszych problemów gramatycznych jest odmiana czasowników przez osoby. W języku hiszpańskim wyróżniamy czasowniki regularne i nieregularne. Poniżej postaramy się wyjaśnić czasowniki regularne i ich odmiany w czasie teraźniejszym. Zobacz, jak łatwy do nauki jest język hiszpański!',
                style: GoogleFonts.notoSans(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(height: 20),
          DataTable(
            columns: [
              DataColumn(
                  label: Expanded(
                child: Text(
                  'Singular (liczba pojedyńcza)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: screenWidth / 33),
                ),
              )),
              DataColumn(
                label: Text(
                  'Plural (liczba mnoga)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: screenWidth / 33),
                ),
              ),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('Yo (Ja)')),
                DataCell(Text('Nosotros (My)')),
              ]),
              DataRow(cells: [
                DataCell(Text('Tú (Ty)')),
                DataCell(Text('Vosotros (Wy)')),
              ]),
              DataRow(cells: [
                DataCell(Text('Él, Ella, Usted (On, Ona, Pan/Pani)')),
                DataCell(Text('Ellos, Ellas, Ustedes (Oni, One, Państwo)')),
              ]),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(9),
            width: double.infinity,
            height: screenHeight / 1.26,
            decoration: BoxDecoration(
              color: const Color(0xFFe78d01),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'W języku hiszpańskim wyróżniamy trzy grupy czasowników regularnych. Odmieniamy czasowniki we wszystkich tych grupach identycznie, zamieniając końcówki bezokolicznikowe na końcówki charakterystyczne dla danej grupy czasownikowej. Postępujemy w ten sam sposób, aby odmieniać wszystkie czasowniki: ',
                    style: GoogleFonts.notoSans(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '1. Lokalizujemy końcówkę czasownika w bezokoliczniku (infinitivo)     (możliwe końcówki: -ar -er -ir) ',
                    style: GoogleFonts.notoSans(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '2. Kasujemy końcówkę bezokolicznikową',
                    style: GoogleFonts.notoSans(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '3. Dodajemy końcówkę zgodnie z grupą czasownika i osobą',
                    style: GoogleFonts.notoSans(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Pierwsza grupa czasowników',
                    style: GoogleFonts.notoSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'I grupa - czasowniki zakończone na -ar',
                    style: GoogleFonts.notoSans(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Cantar (Śpiewać)',
                    style: GoogleFonts.notoSans(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Hablar (Rozmawiać)',
                    style: GoogleFonts.notoSans(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Bailar (Tańczyć)',
                    style: GoogleFonts.notoSans(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Odmiana czasownika - cantar (Śpiewać):',
                    style: GoogleFonts.notoSans(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Image(
            image: AssetImage('assets/verbs/cantar.png'),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(9),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFe78d01),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Odmiana czasownika - hablar (Rozmawiać):',
                    style: GoogleFonts.notoSans(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Image(
            image: AssetImage('assets/verbs/hablar.png'),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(9),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFe78d01),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Odmiana czasownika - hablar (Rozmawiać):',
                    style: GoogleFonts.notoSans(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
