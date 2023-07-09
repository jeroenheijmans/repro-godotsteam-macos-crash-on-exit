# Sample Godot Crash-On-Exit for macOS

This repository is a minimal reproducible scenario for a possible bug with GodotSteam.

Steps used to create this repro:

1. Create a new Godot 4 project on an intel-based Macbook Pro
2. Create the most basic possible Control scene and set it as default
3. Add the GodotSteam addon from the AssetLibrary
4. Export as an `.app` and _uncheck_ "Export With Debug"
5. Start the exported app and close it

Then:

- Result: crash report from the Operating System
- Expected: clean exit

Note that prior to adding GodotSteam this did _not_ happen.

## Sample output

See [sample_crash_log.txt](sample_crash_log.txt) for the full log from the Operating System.
Below is the Godot output when running the `.app` executable with `--verbose`, also showing a "Segmentation Fault":

```none
Godot Engine v4.0.3.stable.official.5222a99f5 - https://godotengine.org
TextServer: Added interface "Dummy"
TextServer: Added interface "ICU / HarfBuzz / Graphite (Built-in)"
Text-to-Speech: AVSpeechSynthesizer initialized.
Using "default" pen tablet driver...
OpenGL debugging not supported!
OpenGL API 4.1 ATI-4.12.7 - Compatibility - Using Device: ATI Technologies Inc. - AMD Radeon Pro 560X OpenGL Engine
CoreAudio: detected 2 channels
CoreAudio: audio buffer frames: 512 calculated latency: 11ms

TextServer: Primary interface set to: "ICU / HarfBuzz / Graphite (Built-in)".
CameraServer: Registered camera FaceTime HD Camera (Built-in) with ID 1 and position 0 at index 0
CORE API HASH: 0
EDITOR API HASH: 0
[S_API] SteamAPI_Init(): Loaded '/Users/jeroenheijmans/Library/Application Support/Steam/Steam.AppBundle/Steam/Contents/MacOS/steamclient.dylib' OK.
[S_API FAIL] SteamAPI_Init() failed; no appID found.
Either launch the game from Steam, or put the file steam_appid.txt containing the correct appID in your game folder.
[S_API FAIL] Tried to access Steam interface SteamUser021 before SteamAPI_Init succeeded.
[S_API FAIL] Tried to access Steam interface SteamUtils010 before SteamAPI_Init succeeded.
{ "status": 79, "verbal": "Invalid app ID or app not installed." }
XR: Clearing primary interface
XR: Removed interfaceNative mobile
[1]    4721 segmentation fault  ./CrashOnExitTest001 -v
```
