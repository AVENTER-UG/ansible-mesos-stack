with import <nixpkgs> {};

stdenv.mkDerivation {
name = "ansible-env";

buildInputs = [
    ansible
    openssh
    tmux-xpanes
];

SOURCE_DATE_EPOCH = 315532800;
PROJDIR = "${toString ./.}";

shellHook = ''
    '';
}

