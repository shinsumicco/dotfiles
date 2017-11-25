all: deploy

deploy:
	# Vim
	ln -sf $(PWD)/.vimrc $(HOME)/
	ln -sf $(PWD)/.vim/dein.config/ $(HOME)/.vim/
	ln -sf $(PWD)/.vim/colors/ $(HOME)/.vim/
	# tmux
	ln -sf $(PWD)/.tmux.conf $(HOME)/.tmux.conf
	# .inputrc
	ln -sf $(PWD)/.inputrc $(HOME)/
	# .bashrc
	python $(PWD)/scripts/apply_bashrc.py $(HOME)/.bashrc
	# .gitconfig
	ln -sf $(PWD)/.gitconfig $(HOME)/.gitconfig

porg:
	sh $(PWD)/scripts/install_porg.sh
