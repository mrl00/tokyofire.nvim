#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=#ffeedd,bg=#331a12"

set -g message-style "fg=#ffeedd,bg=#331a12"
set -g message-command-style "fg=#ffeedd,bg=#331a12"

set -g pane-border-style "fg=#331a12"
set -g pane-active-border-style "fg=#ffeedd"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#ffeedd,bg=#150b07"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#160c08,bg=#ffeedd,bold] #S #[fg=#ffeedd,bg=#150b07,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#150b07,bg=#150b07,nobold,nounderscore,noitalics]#[fg=#ffeedd,bg=#150b07] #{prefix_highlight} #[fg=#331a12,bg=#150b07,nobold,nounderscore,noitalics]#[fg=#ffeedd,bg=#331a12] %Y-%m-%d  %I:%M %p #[fg=#ffeedd,bg=#331a12,nobold,nounderscore,noitalics]#[fg=#160c08,bg=#ffeedd,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#150b07,bg=#150b07,nobold,nounderscore,noitalics]#[fg=#ffeedd,bg=#150b07] #{prefix_highlight} #[fg=#331a12,bg=#150b07,nobold,nounderscore,noitalics]#[fg=#ffeedd,bg=#331a12] %Y-%m-%d  %H:%M #[fg=#ffeedd,bg=#331a12,nobold,nounderscore,noitalics]#[fg=#160c08,bg=#ffeedd,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#cc9988,bg=#150b07"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#cc9988,bg=#150b07"
setw -g window-status-format "#[fg=#150b07,bg=#150b07,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#150b07,bg=#150b07,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#150b07,bg=#331a12,nobold,nounderscore,noitalics]#[fg=#ffeedd,bg=#331a12,bold] #I  #W #F #[fg=#331a12,bg=#150b07,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#ffbb33]#[bg=#150b07]#[fg=#150b07]#[bg=#ffbb33]"
set -g @prefix_highlight_output_suffix ""
