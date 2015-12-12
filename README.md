# mpvctl

Shell scripts to control a long running mpv from command line.

## Usage

```
./mpvctl <cmd> [ARGS...]

COMMANDS:
  play		- start playing
  pause		- pause current file
  stop		- stop and clear playlist
  next		- play next file
  prev		- play previous file
  add [...]	- add parameters to playlist
  album [...]	- play matching albums
  track [...]	- play matching tracks

PIPE:
  find ~/music/ -type f | ./mpvctl
```

## Installation

```
make
make install
```
