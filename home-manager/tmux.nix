{ pkgs, ... }: {
  programs = {
    tmux = {
      enable = true;
      baseIndex = 1;
      shortcut = "a";
      terminal = "screen-256color";
      historyLimit = 10000000;
      mouse = true;

      plugins = with pkgs.tmuxPlugins; [
        onedark-theme
        vim-tmux-navigator
      ];

      extraConfig = ''
        # position status on top
        set -g status-position top

        # set bind for vertical and horizontal
        bind - split-window -v -c "#{pane_current_path}"
        bind + split-window -h -c "#{pane_current_path}"
      '';
    };
  };
}
