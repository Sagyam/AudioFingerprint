# Fingerprint audio files & identify what's playing

Install following additional requirements before

    Installing portaudio may raise aa error use sudo apt-get install portaudio19-dev
    Install Tkinter for matplotlib using sudo apt-get install python3-tk
    ffmpeg is also requried sudo apt install ffmpeg
 


## How to set up 

1. Run `$ make clean reset` to clean & init database struct
1. Run `$ make tests` to make sure that everything is properly configurated
1. Copy some `.mp3` audio files into `mp3/` directory
1. Run `$ make collect` to analyze audio files & fill your db with hashes
1. Start play any of audio file (from any source) from `mp3/` directory, and run (parallely) `$ make listen5',`$ make listen8', `$ make listen10',`$ make listen15' for recording 5,8,10 and 15 seconds respectively.


## How to
- To remove a specific song & related hash from db

  ```bash
  $ python sql-execute.py -q "DELETE FROM songs WHERE id = 6;"
  $ python sql-execute.py -q "DELETE FROM fingerprints WHERE song_fk = 6;"
  ```

## Thanks to
 -[Youtube Channel Real Engineering--How Shazam Works](https://www.youtube.com/watch?v=kMNSAhsyiDg)
- [How does Shazam work](http://coding-geek.com/how-shazam-works)
https://github.com/itspoma/audio-fingerprint-identifying-python
- [Audio fingerprinting and recognition in Python](https://github.com/worldveil/dejavu) - thanks for fingerprinting login via     pynum

