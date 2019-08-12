# ahk-obs-control

A work-in-progress collection of AutoHotKey scripts used to make streaming while gameplaying less frustrating and more enjoyable

## Scripts in this repository

### show-hide-obs-source

For Rust players, hide the island map from the stream so you can avoid easily revealing your location to your viewers.

#### Installation

Copy the files to a direcotry where you can easily find them, such as Documents\AHK or Desktop\AHK

#### Usage

You can run this script one of two ways: 
1. Either install [AutoHotKey](https://www.autohotkey.com/download/) (version as of this release is v1.1.30.03 - April 5, 2019) and then running the script (right click the script, _Run Script_), or
2. Run the pre-compiled, included .exe file.

When you are done with your Rust stream and want to kill the script, fine the AutoHotKey icon in the system tray near the clock, right click it and choose the appropriate option.

The script as released assumes the user has kept the default Rust map keybind 'g' and will assign OBS keybinds to show the cover source (Num1) and hide the cover source (Num2). If you wish to alter these, please make the changes in the script and then either run the script or re-compile it using AutoHotKey.

## License

[GNU GPLv3](https://choosealicense.com/licenses/gpl-3.0/)