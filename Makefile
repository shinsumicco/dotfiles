all: deploy

deploy:
	# Vim
	ln -sf $(PWD)/.vimrc $(HOME)/
	mkdir -p $(HOME)/.vim
	ln -sf $(PWD)/.vim/dein.config/ $(HOME)/.vim/
	ln -sf $(PWD)/.vim/colors/ $(HOME)/.vim/
	# tmux
	ln -sf $(PWD)/.tmux.conf $(HOME)/.tmux.conf
	# .inputrc
	ln -sf $(PWD)/.inputrc $(HOME)/
	# .bashrc
	python $(PWD)/scripts/apply_bashrc.py $(HOME)/.bashrc
	# .dircolors
	ln -sf $(PWD)/.dircolors.256dark $(HOME)/.dircolors
	# .git*
	ln -sf $(PWD)/.gitconfig $(HOME)/.gitconfig
	ln -sf $(PWD)/.gitignore_global $(HOME)/.gitignore_global
