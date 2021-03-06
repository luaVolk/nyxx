part of nyxx.lavalink;

/// Playlist contains list of track and basic info about itself.
class Playlist extends Entity {
  /// Playlist name
  String name;

  /// Current track
  int selectedTrack;

  /// List of tracks
  List<Track> tracks;

  Map<String, dynamic> raw;

  Playlist._new(this.raw) : super._new(1) {
    name = raw['playlistInfo']['name'] as String;
    selectedTrack = raw['playlistInfo']['selectedTrack'] as int;

    tracks = List();
    raw['tracks'].forEach((dynamic o) {
      tracks.add(Track._new(o as Map<String, dynamic>));
    });
  }
}
