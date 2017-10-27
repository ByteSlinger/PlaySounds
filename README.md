# PlaySounds
iOS Utility app to play system sounds by SystemSoundID

iOS Systems Sounds
==================
This is a demo app in Swift 4 (iOS 10.3) to play individual iOS system sounds by SystemSoundID.

I know, it is REALLY simple.  I wanted to use the existing "keypress" sound (1130) for button taps and didn't know what the correct SystemSoundID was for it.  So I wrote this trivial app to be able to spin through SystemSoundID's between 1000 and 4096 (lots of gaps that don't play anything), and play them one at a time until I found the one I wanted.

NOTE: this app WILL NOT WORK in the iOS simulator.  You must run it on an iOS device (iPhone, iPad, iPod Touch).

This is a utility app for developers really.  Not for the general public (...though it is useful to play and hear all the different sounds on your iPhone or iPad)

How It Works
============
It's this simple:
```Swift
import AVFoundation

let TAP_SOUND_ID: SystemSoundID = 1130  // tock
    
func playTapSound() {
  AudioServicesPlaySystemSoundWithCompletion(TAP_SOUND_ID, nil);
}

```

List of System Sound IDs
========================
The only list I've been able to find is here:

- https://github.com/TUNER88/iOSSystemSoundsLibrary

I found that that list is incomplete, probably because it was written in 2013, but it does have most of them.


Kudos
=====
This evolved from these fine Repos:

- [iOSSystemSoundsLibrary by TUNER88](https://github.com/TUNER88/iOSSystemSoundsLibrary)
- [iOS-Sounds-and-Ringtones by CQH](https://github.com/CQH/iOS-Sounds-and-Ringtones)
