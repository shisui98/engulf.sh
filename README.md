# engulf.sh 

A simple script to "swallow" the terminal while launching zathura. What's so special?
It can use fzf too! No more hunting for the right file inside zathura!
It depends on [xdo](https://github.com/baskerville/xdo) to show/hide the window.

Disclaimer: It doesn't work with any file manager (ranger/sfm/thunar), only the terminal, fzf solves the file browsing/selecting issue generally.

### usage
```
./engulf.sh zathura fzf 
```
You can use it with mpv too. If you don't want to launch with fzf, you can just launch without the 2nd argument. The 2nd argument can be a file too.
