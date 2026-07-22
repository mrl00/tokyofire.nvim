#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=#fceed2,bg=#3e2f2e"

set -g message-style "fg=#fceed2,bg=#3e2f2e"
set -g message-command-style "fg=#fceed2,bg=#3e2f2e"

set -g pane-border-style "fg=#3e2f2e"
set -g pane-active-border-style "fg=#fceed2"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#fceed2,bg=#150e0c"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#160f0d,bg=#fceed2,bold] #S #[fg=#fceed2,bg=#150e0c,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#150e0c,bg=#150e0c,nobold,nounderscore,noitalics]#[fg=#fceed2,bg=#150e0c] #{prefix_highlight} #[fg=#3e2f2e,bg=#150e0c,nobold,nounderscore,noitalics]#[fg=#fceed2,bg=#3e2f2e] %Y-%m-%d  %I:%M %p #[fg=#fceed2,bg=#3e2f2e,nobold,nounderscore,noitalics]#[fg=#160f0d,bg=#fceed2,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#150e0c,bg=#150e0c,nobold,nounderscore,noitalics]#[fg=#fceed2,bg=#150e0c] #{prefix_highlight} #[fg=#3e2f2e,bg=#150e0c,nobold,nounderscore,noitalics]#[fg=#fceed2,bg=#3e2f2e] %Y-%m-%d  %H:%M #[fg=#fceed2,bg=#3e2f2e,nobold,nounderscore,noitalics]#[fg=#160f0d,bg=#fceed2,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#dfbdba,bg=#150e0c"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#dfbdba,bg=#150e0c"
setw -g window-status-format "#[fg=#150e0c,bg=#150e0c,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#150e0c,bg=#150e0c,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#150e0c,bg=#3e2f2e,nobold,nounderscore,noitalics]#[fg=#fceed2,bg=#3e2f2e,bold] #I  #W #F #[fg=#3e2f2e,bg=#150e0c,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#fede6d]#[bg=#150e0c]#[fg=#150e0c]#[bg=#fede6d]"
set -g @prefix_highlight_output_suffix ""
