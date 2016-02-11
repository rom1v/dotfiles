.PHONY: bash gitbashprompt git vim mutt tmux pidcat

all: bash vim git mutt tmux pidcat

bash: gitbashprompt
	mv -f ~/.bashrc ~/.bashrc.bak || :
	mv -f ~/.bash_aliases ~/.bash_aliases.bak || :
	mv -f ~/.bash_aliases_custom ~/.bash_aliases_custom.bak || :
	mv -f ~/.profile ~/.profile.bak || :
	ln -sf $(PWD)/.bashrc ~/
	ln -sf $(PWD)/.bash_aliases ~/
	ln -sf $(PWD)/.bash_aliases_custom ~/
	ln -sf $(PWD)/.profile ~/

gitbashprompt:
	ln -sf $(PWD)/gitbashprompt/gitbashprompt ~/

git:
	mv -f ~/.gitconfig ~/.gitconfig.bak || :
	ln -sf $(PWD)/.gitconfig ~/

vim:
	mv -f ~/.vimrc ~/.vimrc.bak || :
	ln -sf $(PWD)/.vimrc ~/
	mv -f ~/.vim ~/.vim.bak || :
	ln -sf $(PWD)/.vim ~/

mutt:
	mv -f ~/.muttrc ~/.muttrc.bak || :
	ln -sf $(PWD)/.muttrc ~/
	ln -sf $(PWD)/.muttrc_private ~/
	mkdir -p ~/.mutttmp

tmux:
	mv -f ~/.tmux.conf ~/.tmux.conf.bak || :
	ln -sf $(PWD)/.tmux.conf ~/

terminator:
	mv -f ~/.config/terminator/config ~/.config/terminator/config.bak|| :
	mkdir -p ~/.config/terminator
	ln -sf $(PWD)/.terminator_config ~/.config/terminator/config

pidcat:
	ln -sf $(PWD)/pidcat/pidcat.py ~/Documents/bin/pidcat
