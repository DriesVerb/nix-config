{
  programs.zsh = {
    enable = true;
    autocd = true;
    enableCompletion = true;

    initExtra = ''
                          BLACK="\e[30m"
                          BOLD="\e[1m"
                          NORMAL="\e[0m"
                          BLUE_B="\e[104m"
                          END="\e[0m"

            echo_format () {
            echo -e "$BLACK$BLUE_B     $BOLD$1   $NORMAL$BLACK$BLUE_B󱜙 $END"
                          }

            alias gcm='f() {
            echo_format "git commit -m '$1'"
            git commit -m "$1" &&
            };f'
      
            alias gnb='f() {
            git branch "$1" &&
            git checkout "$1" &&
            echo_format "git branch $1 + git checkout $1"
            };f'

      # Tmux shortcuts
      alias tmr='f() {
      tmux rename-window $1
      };f'

    '';

    initExtraBeforeCompInit = ''
      eval "$(direnv hook zsh)"
    '';


    shellAliases = {

      "~" = "cd ~";
      "cl" = "clear";

    };

    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
    };
  };
}
