{ pkgs }: {
  deps = [
    pkgs.python39Full
    pkgs.ffmpeg
    pkgs.bashInteractive
    pkgs.python39Packages.flask
  ];
}
