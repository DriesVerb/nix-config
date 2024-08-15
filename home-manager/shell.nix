{
  home.shellAliases = {

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

    dnuxt = "cd ~/nix-config/dev-shells/atofe-nuxt";

    #shortcuts Nuxt devshell
    gsdNuxt = "dnuxt && nde";
    gedNuxt = "dnuxt && vix";

    # projects

    # nuxt tutorial
    NuxtTest = "cd ~/projects/nuxt/test-1";
    gosNuxtTest = "NuxtTest && npm start";
  };

}
