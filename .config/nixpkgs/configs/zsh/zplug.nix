let
  createZPlugPlugin = name: tags: { name = name; tags = tags; };

  yarnCompletionsPlugin = createZPlugPlugin "YannickFricke/yarn-completion" [ "from:github" ];
  gitPlugin = createZPlugPlugin "plugins/git" [ "from:oh-my-zsh" ];
  zshCompletionsPlugin = createZPlugPlugin "zsh-users/zsh-completions" [ "depth:1" ];
  zshAutoSuggestionsPlugin = createZPlugPlugin "zsh-users/zsh-autosuggestions" [ "from:github" ];
  zshSyntaxHighlightingPlugin = createZPlugPlugin "zsh-users/zsh-syntax-highlighting" [ "from:github" "defer:1" ];
  zshAutoPairPlugin = createZPlugPlugin "hlissner/zsh-autopair" [ "defer:2" ];
  zshNodeAliasesPlugin = createZPlugPlugin "YannickFricke/NodeAliases" [ "use:aliases.sh" ];
  codeStatsPlugin = createZPlugPlugin "code-stats/code-stats-zsh" [ "from:gitlab" ''use:"codestats.plugin.zsh"'' ];
  symfonyCompletionsPlugin = createZPlugPlugin "jerguslejko/zsh-symfony-completion" [ ''use:"symfony-console.plugin.zsh"'' ];
in
{
  enable = true;
  plugins = [
    yarnCompletionsPlugin
    gitPlugin
    zshCompletionsPlugin
    zshAutoSuggestionsPlugin
    zshSyntaxHighlightingPlugin
    zshAutoPairPlugin
    zshNodeAliasesPlugin
    codeStatsPlugin
    symfonyCompletionsPlugin
  ];
}
