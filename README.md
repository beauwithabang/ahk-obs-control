# ahk-obs-control

A work-in-progress collection of AutoHotKey scripts used to make streaming while gameplaying less frustrating and more enjoyable

## Scripts in this repository

### show-hide-obs-source

For Rust players, hide the island map from the stream so you can avoid easily revealing your location to your viewers.

#### Installation

Copy the files to a direcotry where you can easily find them, such as Documents\AHK or Desktop\AHK

#### Usage

You can run this script one of two ways: 
1. Either install [AutoHotKey](https://www.autohotkey.com/download/) (version as of this release is v1.1.33.06) and then running the script (right click the script -> 'Run Script'), or
2. Run the pre-compiled, included .exe file.

Next, in the sources for OBS, make sure that in the scene with your Game Capture, the image being used as the map cover is ABOVE the Game Capture, but hidden (eye is crossed out, see provided example image example-obs-sources.png).

Finally, in OBS Settings -> Keybinds, set 'Show' for the map cover image to F10 and 'Hide' for the map cover image to F11. See the example image 'OBS_keybinds.png' as an example.

Now, pressing g while in Rust will show the map cover image and releasing g will hide the map cover image.

NOTE: this will ONLY work while you are IN the Rust.exe game client. The map cover image will not show/hide if you are not in the running game.

When you are done with your Rust stream and want to kill the script, find the AutoHotKey icon in the system tray near the clock, right click it and choose the appropriate option.

## License

[GNU GPLv3](https://choosealicense.com/licenses/gpl-3.0/)