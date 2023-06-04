{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  buildInputs = [
    python310
    python310Packages.pip
    python310Packages.virtualenv
    ansible
    openssh
    sshpass
    jq
  ];

  shellHook = ''
    [ ! -d '$PROJDIR/python-dev' ] && virtualenv python-dev && echo "SETUP python-dev: DONE"
    source python-dev/bin/activate
    pip install boto3
    export PATH=/home/andreas/bin:$PATH
  '';
  
}

