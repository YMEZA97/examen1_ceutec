import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PodcastUi extends StatefulWidget {
  const PodcastUi({super.key});
  @override
   State<PodcastUi> createState() => _PodcastUiState();
}

class _PodcastUiState extends State<PodcastUi> {
  final AudioPlayer _player = AudioPlayer();
  bool _isPlaying = false;
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Podcast'),
      ),
      body: Column(
        children: [
          // Barra de progreso
          Slider(
            value: _progress,
            onChanged: (value) {
              setState(() {
                _progress = value;
                _player.seek(Duration(seconds: value.toInt()));
              });
            },
            min: 0.0,
            max: 1.0,
          ),
          // Controles de reproducción
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.skip_previous),
                onPressed: () {
                  // Implementar lógica para saltar al episodio anterior
                },
              ),
              IconButton(
                icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: () async {
                  if (_isPlaying) {
                    await _player.pause();
                  } else {
                    
                  }
                  setState(() {
                    _isPlaying = !_isPlaying;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.skip_next),
                onPressed: () {
                  // Implementar lógica para saltar al siguiente episodio
                },
              ),
            ],
          ),
          // Información del episodio (título, descripción, etc.)
          // ...
        ],
      ),
    );
  }
}