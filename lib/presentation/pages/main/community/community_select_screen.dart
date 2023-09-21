import 'package:flutter/material.dart';
import 'package:putone/components/community_card.dart';
import 'package:putone/mock/community_dummy_data.dart';
import 'package:putone/theme/app_color_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunitySelectScreen extends StatefulWidget {
  CommunitySelectScreen({super.key});

  @override
  State<CommunitySelectScreen> createState() => _CommunitySelectScreenState();
}

class _CommunitySelectScreenState extends State<CommunitySelectScreen> {
  final _filteringController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'コミュニティの追加',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColorTheme.dark().gray300,
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            padding: EdgeInsets.fromLTRB(12, 16, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    '追加するコミュニティ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text('以下のコミュニティから追加してください'),
                ),
                SizedBox(height: 12),
                Form(
                  child: Container(
                    height: 40,

                    //alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(45, 0, 0, 0),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(2, 4),
                        ),
                      ],
                      color: AppColorTheme.dark().gray400,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: TextFormField(
                      controller: _filteringController,
                      //textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.cancel_outlined),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ListView.builder(
                itemCount: dummyCommunity.length,
                itemBuilder: (context, index) {
                  return CommunityCard(
                    community: dummyCommunity[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
