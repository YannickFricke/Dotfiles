pkgs:
let
  corePackages = with pkgs; [
    # Extra utilities for working with GIT
    git-town

    # A better history viewer for terminals
    hstr

    # For having the correct tools to interact with PostgreSQL databases
    postgresql

    # The best tool for making backups
    restic

    # "Find in files" for the terminal with ignore-files support
    ripgrep

    # A terminal based GIT client
    tig

    # For decompressing ZIP archives from the CLI
    unzip

    # Interact with the clipboard from the terminal
    xclip

    # YADM is a dotfiles manager which works on top of GIT repositories
    yadm
  ];

  extraPackages = with pkgs; [
    # For opening archives
    archiver

    # For making screenshots
    flameshot

    # Storing data in secure volumes
    veracrypt
  ];

  applicationPackages = with pkgs; [
    # Support for `docker compose` AND NOT `docker-compose`!
    docker-compose_2

    # Support NodeJS based packages
    nodejs

    # Yarn is a more deterministic package manager than NPM
    yarn

    # Install the language server for the NIX language
    rnix-lsp
  ];

  proprietarySoftware = with pkgs; [
    # Datagrip is a nice database client from JetBrains
    jetbrains.datagrip

    # Discord is a messenger with audio and video support
    discord

    # Postman is a client for interacting with REST + GraphQL APIs in an easy manner
    postman
  ];
in
corePackages ++ extraPackages ++ applicationPackages ++ proprietarySoftware
