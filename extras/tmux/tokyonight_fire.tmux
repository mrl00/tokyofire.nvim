#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=#fbeee6,bg=#2c2523"

set -g message-style "fg=#fbeee6,bg=#2c2523"
set -g message-command-style "fg=#fbeee6,bg=#2c2523"

set -g pane-border-style "fg=#2c2523"
set -g pane-active-border-style "fg=#fbeee6"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#fbeee6,bg=#141110"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#151211,bg=#fbeee6,bold] #S #[fg=#fbeee6,bg=#141110,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#141110,bg=#141110,nobold,nounderscore,noitalics]#[fg=#fbeee6,bg=#141110] #{prefix_highlight} #[fg=#2c2523,bg=#141110,nobold,nounderscore,noitalics]#[fg=#fbeee6,bg=#2c2523] %Y-%m-%d  %I:%M %p #[fg=#fbeee6,bg=#2c2523,nobold,nounderscore,noitalics]#[fg=#151211,bg=#fbeee6,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#141110,bg=#141110,nobold,nounderscore,noitalics]#[fg=#fbeee6,bg=#141110] #{prefix_highlight} #[fg=#2c2523,bg=#141110,nobold,nounderscore,noitalics]#[fg=#fbeee6,bg=#2c2523] %Y-%m-%d  %H:%M #[fg=#fbeee6,bg=#2c2523,nobold,nounderscore,noitalics]#[fg=#151211,bg=#fbeee6,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#a08a85,bg=#141110"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a08a85,bg=#141110"
setw -g window-status-format "#[fg=#141110,bg=#141110,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#141110,bg=#141110,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#141110,bg=#2c2523,nobold,nounderscore,noitalics]#[fg=#fbeee6,bg=#2c2523,bold] #I  #W #F #[fg=#2c2523,bg=#141110,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#fde3a7]#[bg=#141110]#[fg=#141110]#[bg=#fde3a7]"
set -g @prefix_highlight_output_suffix ""
