## Fingerprint audio files & identify what's playing
   This is an audio search algorithm that can recognise any audio clip in it's database by listening to a 5 seconds recording.
   # For Ubuntu
   Install following additional requirements before
   Installing portaudio may raise an error try 
   ```sudo apt-get install portaudio19-dev ```
   ```sudo apt-get install python3-tk```
    ```sudo apt install ffmpeg```
    
   # For Windows
    Install following additional requirements before
    !!Since command prompt does not support coloured output most of the text will be garbled!!
    However the app stills works reliably
    Installing portaudio requires Visual Sudio and Visual C++ 14.0 or higher
    ffmpeg can be downloaded from it's official website
 


## How to set up 

1. Run `$ make clean reset` to clean & init database struct
2. Run `$ make tests` to make sure that everything is properly configurated
3. Copy some `.mp3` audio files into `mp3/` directory
4. Run `$ make collect` to analyze audio files & fill your db with hashes
5. Start play any of audio file (from any source) from `mp3/` directory, and run (parallely) `$ make listen5'for recording 5 seconds.


## How to remove specfic entry
- To remove a specific song & related hash from db

  ```bash
  $ python sql-execute.py -q "DELETE FROM songs WHERE id = 6;"
  $ python sql-execute.py -q "DELETE FROM fingerprints WHERE song_fk = 6;"
  ```

## Thanks to
- [Youtube Channel Real Engineering--How Shazam Works](https://www.youtube.com/watch?v=kMNSAhsyiDg)
- [How does Shazam work](http://coding-geek.com/how-shazam-works)
  (https://github.com/itspoma/audio-fingerprint-identifying-python)
- [Audio fingerprinting and recognition in Python](https://github.com/worldveil/dejavu) - thanks for fingerprinting login via   pynum

