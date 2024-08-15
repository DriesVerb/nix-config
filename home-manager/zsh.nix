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
    '';



    shellAliases = {

      zip = "mkdir tst";
      "~" = "cd ~";
      "cl" = "clear";

      # TODO: integrate nixvim
      vix = "~/.config/nixvim/result/bin/nvim";

      # shortcut for 
      evix = "cd ~/.config/nixvim && vix";
      ehome = "cd ~/&& vix";


      #nix
      nru = "echo_format 'nix run ' &&  nix run";
      nbu = "echo_format 'nix build ' &&  nix build";
      nde = "echo_format 'nix develop ' &&  nix develop";

      #git
      gaa = "echo_format 'git add . ' &&  git add .";
      gst = "echo_format 'git status ' && git status";
      gph = "echo_format 'git push ' && git push";
      gpl = "echo_format 'git pull ' && git pull";
      gap = "echo_format 'git add -p ' && git add -p";
      gcp = "echo_format 'git checkout -p ' && git checkout -p";
      gcd = "echo_format 'git checkout development ' && git checkout development";

      # home-manager
      hmr = "home-manager switch --flake .#eta@popos";
    };

    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
    };
  };
}
