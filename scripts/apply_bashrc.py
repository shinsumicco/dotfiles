import os
import sys


fp_bashrc = os.path.realpath(os.path.expanduser(sys.argv[1]))
if not os.path.exists(fp_bashrc):
    sys.exit(1)

source_command = "source \"$HOME/dotfiles/.bashrc.common\""
escaped_source_command = "source \\\"\\$HOME/dotfiles/.bashrc.common\\\""

with open(fp_bashrc, "r") as fin:
    lines = fin.readlines()

    for line in lines:
        if source_command in line:
            break
    else:
        os.system("echo \"# include .bashrc.common in dotfiles repository\" >> " + fp_bashrc)
        os.system("echo \"" + escaped_source_command + "\" >> " + fp_bashrc)
