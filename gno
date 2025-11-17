[keyboard]
bindings = [
  # Super + Arrows → Move between tmux panes
  { key = "Left",  mods = "Super", chars = "\u001b[1;3D" },
  { key = "Right", mods = "Super", chars = "\u001b[1;3C" },
  { key = "Up",    mods = "Super", chars = "\u001b[1;3A" },
  { key = "Down",  mods = "Super", chars = "\u001b[1;3B" },

  # Super + Shift + Arrows → Resize panes
  { key = "Left",  mods = "Super|Shift", chars = "\x1b[101;9u" },
  { key = "Right", mods = "Super|Shift", chars = "\x1b[102;9u" },
  { key = "Up",    mods = "Super|Shift", chars = "\x1b[103;9u" },
  { key = "Down",  mods = "Super|Shift", chars = "\x1b[104;9u" },

  # Super + W → Kill pane
  { key = "W", mods = "Super", chars = "\x1b[99;9u" },

  # Super + Enter → Split pane
  { key = "Enter", mods = "Super", chars = "\x1b[100;9u" }
]



# Super-arrows → move
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Super+Shift+arrows → resize
bind -n "Escape [101;9u" resize-pane -L 3
bind -n "Escape [102;9u" resize-pane -R 3
bind -n "Escape [103;9u" resize-pane -U 2
bind -n "Escape [104;9u" resize-pane -D 2

# Super+W → kill pane
bind -n "Escape [99;9u" kill-pane

# Super+Enter → split pane
bind -n "Escape [100;9u" split-window -v
