{
  programs.bash = {
    enable = true;
    initExtra = ''
      exec zsh
    '';
  };
}
