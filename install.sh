#!/bin/sh

SCRIPT_DIR=$(cd $(dirname ${0}); pwd)

# Vim
ln -sf ${SCRIPT_DIR}/.vimrc ${HOME}/.vimrc
mkdir -p ${HOME}/.vim
ln -sf ${SCRIPT_DIR}/.vim/dein.config/ ${HOME}/.vim/
ln -sf ${SCRIPT_DIR}/.vim/colors/ ${HOME}/.vim/

# tmux
ln -sf ${SCRIPT_DIR}/.tmux.conf ${HOME}/.tmux.conf

# .inputrc
ln -sf ${SCRIPT_DIR}/.inputrc ${HOME}/.inputrc

# .bashrc
python ${SCRIPT_DIR}/scripts/apply_bashrc.py ${HOME}/.bashrc

# .dircolors
ln -sf ${SCRIPT_DIR}/.dircolors.256dark ${HOME}/.dircolors

# Git
ln -sf ${SCRIPT_DIR}/.gitconfig ${HOME}/.gitconfig
ln -sf ${SCRIPT_DIR}/.gitignore_global ${HOME}/.gitignore_global

# VScode
if [ "$(uname)" = "Darwin" ]; then
  # macOS
  mkdir -p ${HOME}/Library/Application\ Support/Code/User
  cp ${SCRIPT_DIR}/.vscode/settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json
  cp ${SCRIPT_DIR}/.vscode/keybindings.json ${HOME}/Library/Application\ Support/Code/User/keybindings.json
elif [ "$(uname)" = "Linux" ]; then
  # Linux
  mkdir -p ${HOME}/.config/Code/User
  cp ${SCRIPT_DIR}/.vscode/settings.json ${HOME}/.config/Code/User/settings.json
  cp ${SCRIPT_DIR}/.vscode/keybindings.json ${HOME}/.config/Code/User/keybindings.json
fi
