# engulf.sh 

A simple script to "swallow" the terminal, especially while launching zathura. What's so special?
It can use fzf/ranger/thunar too! No more hunting for the right file inside zathura!
It depends on [xdo](https://github.com/baskerville/xdo) to show/hide the window.

For ranger, you'll have to modify the $HOME/.config/ranger/rifle.conf file.
You can use ` mimeopen -d .pdf ` to set the default program to launch pdf, I usually do `engulf.sh zathura` after I've copied the script to `/usr/local/bin/`.
After this, modify rifle.conf to use `open "$@"` option when opening pdf, most likely by commenting out the `has zathura` line or by replacing it's value.


### usage
With fzf:
```
./engulf.sh zathura fzf 
```

You can open files directly as well:
```
./engulf.sh zathura FILENAME
```
With rifle/ranger if xdg-open is set to `engulf.sh zathura`:
```
rifle FILENAME
```
