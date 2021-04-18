
# How to copy files
On host: scp -P 5555 FILE steve@localhost:

# Remote connect with terminal of your choice (terminal, PUTTY)
ssh -p 5555 steve@localhost


# tmux
You can have multiple windows open using a terminal emulator, tmux

How to use
- Run 'tmux'
- All tmux commands are prefix by you first executing ctrl+b
  - c             new window
  - p             move to previous window
  - n             move to next window
  - %             split horizontal
  - "             split vertical 
  - Arrow Keys    move to different pane
- You can close any window or pane like you would any terminal, either executing 'logout', 'exit', or ctrl+d
