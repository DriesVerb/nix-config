{
  programs.bash = {
    enable = true;

    shellAliases =
      {
        "~" = "cd ~";
      };

    initExtra = ''
             _GREEN="\[$(tput setaf 046)\]"
             _BLUE="\[$(tput setaf 045)\]"
             _CYAN="\[$(tput setaf 014)\]"
             _ORANGE="\[$(tput setaf 205)\]"
             _PURPLE="\[$(tput setaf 135)\]"
             _RESET="\[$(tput sgr0)\]"
             _BOLD=$(tput bold)
                                                   BLACK="\e[30m"
                                                   BOLD="\e[1m"
                                                   NORMAL="\e[0m"
                                                   BLUE_B="\e[104m"
                                                   END="\e[0m"

                                     echo_format () {
                                     echo -e "$BLACK$BLUE_B     $BOLD$1   $NORMAL$BLACK$BLUE_B󱜙 $END"
                                                   }
                               #Adding branch name to bash
                               parse_git_branch() {
                                    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
                               }

                         export PS1="$_CYAN $_GREEN@$_BLUE \w$_PURPLE#$_ORANGE\$(parse_git_branch) $_RESET"
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
  };
}
