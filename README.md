# FFMPEG converter with subs

Converts video files provided in source directory to video files with subtitles (it can be with new audio tracks).

Subtitile file must be located in the same directory with the same name as video file.

Audio file must be located in the same directory with the same name as video file.

### Arguments

`-i` source directory with video files

`-v` verbosity

### Supported formats

Video: `.mkv`, `avi` (converts to `.mkv`)

Audio: `.mp3`

Subtitle: `.ass`, `.srt`

### Requirements

PHP 8+, ffmpeg

## Example
```bash
./ffmpeg-sub -i /app/VideoFiles -v
```

With docker
```bash
make convert source=/app/VideoFiles
```

Result files will be in `/app/VideoFiles/output`.
