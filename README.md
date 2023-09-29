# FFMPEG converter with subs

Converts video files provided in source directory to video files with subtitles.

Subtitile file must be located in the same directory with the same name as vide file.

### Arguments

`-i` source directory with video files

`-v` verbosity

### Supported formats

Video: `.mkv`

Subtitle: `.ass`

## Example
```bash
./ffmpeg-sub -i /app/VideoFiles -v
```

Result files will be in `/app/VideoFiles/output`.
