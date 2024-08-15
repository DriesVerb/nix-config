{
  programs.bash = {
    enable = false;

    initExtra = ''
      exec zsh
    '';
  };
}
