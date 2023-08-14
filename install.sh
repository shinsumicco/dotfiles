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
python3 ${SCRIPT_DIR}/scripts/apply_bashrc.py ${HOME}/.bashrc

# .dircolors
ln -sf ${SCRIPT_DIR}/.dircolors.256dark ${HOME}/.dircolors

# Git
ln -sf ${SCRIPT_DIR}/.gitconfig ${HOME}/.gitconfig
ln -sf ${SCRIPT_DIR}/.gitignore_global ${HOME}/.gitignore_global

# VScode
if [ "$(uname)" = "Darwin" ]; then
  # macOS
  SETTING_DIR="${HOME}/Library/Application Support/Code/User"
elif [ "$(uname)" = "Linux" ]; then
  # Linux
  SETTING_DIR="${HOME}/.config/Code/User"
fi
mkdir -p ${HOME}/.config/Code/User
cp -i ${SCRIPT_DIR}/.vscode/settings.json "${SETTING_DIR}/settings.json"
cp -i ${SCRIPT_DIR}/.vscode/keybindings.json "${SETTING_DIR}/keybindings.json"
