{
  "_" = "sudo";
  "pls" = "sudo";
  ".." = "cd ..";

  # Alias `ls` to show the extended information
  ls = "lsd -la";

  open = "xdg-open";

  # An alias for copying the current path into the clipboard
  pwc = "pwd | xclip -sel clip";

  # Watch should refresh by default every second
  watch = "watch -n 1";
}
