import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VideoUploadWidget extends StatefulWidget {
  @override
  _VideoUploadWidgetState createState() => _VideoUploadWidgetState();
}

class _VideoUploadWidgetState extends State<VideoUploadWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? _videoFile;

  Future<void> _pickVideo() async {
    final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
    setState(() {
      _videoFile = video;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Video'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _videoFile == null
                ? Text(
                    'No video selected.',
                    style: TextStyle(fontSize: 18),
                  )
                : Text(
                    'Video selected: ${_videoFile!.name}',
                    style: TextStyle(fontSize: 16),
                  ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickVideo,
              child: Text('Select Video'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
