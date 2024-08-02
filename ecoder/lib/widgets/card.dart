
import 'package:ecoder/widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/data_model.dart';
import '../services/api_service.dart';


class CardVideo extends StatefulWidget {
  const CardVideo( {Key? key,}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CardState createState() => _CardState();
}

class _CardState extends State<CardVideo> {
  List<DataModel>? _dataModel;

   @override
  void initState() {
    super.initState();
    
    _fetchData();
  }

Future<void> _fetchData() async {
  final ApiService apiService = ApiService();
  final List<DataModel> dataModel = await apiService.fetchData();
  setState(() {
    _dataModel = dataModel;
  });
}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _dataModel != null
          ? ListView.builder(
              itemCount: _dataModel?.length,
              itemBuilder: (context, index) {
                return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        //color: Color(0xFF456F9D),
      ),
     color: Color(0xFF456F9D),
      
        child: Column(
           
          mainAxisAlignment: MainAxisAlignment.center,
           
          children: [
             
            Image.network(
              _dataModel![index].thumbnail,
              //height: 200.0,
             // width: 200.0,
            ),
            const SizedBox(height: 8.0),
            Text(
              _dataModel![index].title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
           
            const SizedBox(height: 8.0),
            Text(
              _dataModel![index].rating,
              style: GoogleFonts.lato(
               textStyle: const TextStyle(
                
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                
              ),
              ),
            ),
            const SizedBox(height: 8.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayerScreen(
                          videoUrl: _dataModel![index].youtubeLink,
                        ),
                      ),
                    );
                  },
                icon: const Icon(
                   Icons.video_file,
                  
                ),
              ),
            ),
          ],
        ),
      
    );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
